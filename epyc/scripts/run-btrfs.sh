#!/bin/bash -x

set -e

MOUNT=/mnt/pgdata
USER=tomas

OUTDIR=$1

for opts in optimized; do
#for opts in none nobarrier compress nodatacow nodiscard all; do

	RESULTS=$OUTDIR/btrfs

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir -p $RESULTS

	sudo mkfs.btrfs -f /dev/nvme0n1p1 /dev/nvme1n1p1 /dev/nvme4n1p1 /dev/nvme5n1p1 > $RESULTS/mkfs.log 2>&1

	./collect-info.sh $RESULTS

	lsblk > $RESULTS/lsblk.log 2>&1

	for d in $(ls /dev | grep 'nvme.*n1$'); do
		sudo smartctl -a /dev/$d > $RESULTS/smartctl.$d.log 2>&1
	done

	mount_opts="defaults,relatime,nobarrier,compress=lzo,nodiscard"

	sudo mount -o $mount_opts /dev/nvme0n1p1 $MOUNT
	sudo chown $USER:$USER $MOUNT

        # create subvolume that we can snapshot
        sudo btrfs subvolume create $MOUNT/pg
        sudo chown $USER:$USER $MOUNT/pg

	sudo btrfs filesystem df $MOUNT > $RESULTS/filesystem-df.log 2>&1
	sudo btrfs filesystem show $MOUNT > $RESULTS/filesystem-show.log 2>&1
	sudo btrfs filesystem usage $MOUNT > $RESULTS/filesystem-usage.log 2>&1

	mount > $RESULTS/mount.log 2>&1

	./run-one-fs.sh $RESULTS $MOUNT

	sudo umount $MOUNT

done
