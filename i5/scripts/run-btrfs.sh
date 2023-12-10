#!/bin/bash -x

set -e

DEVICE=/dev/md127p1
MOUNT=/mnt/raid

OUTDIR=$1

for opts in optimized; do
#for opts in none nobarrier compress nodatacow nodiscard all; do

	RESULTS=$OUTDIR/btrfs

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir $RESULTS

	sudo mkfs.btrfs -f $DEVICE > $RESULTS/mkfs.log 2>&1

	lsblk > $RESULTS/lsblk.log 2>&1

	sudo mdadm --detail /dev/md127 > $RESULTS/mdadm.log 2>&1

	sudo smartctl -a /dev/sda > $RESULTS/smartctl.sda.log 2>&1
	sudo smartctl -a /dev/sdb > $RESULTS/smartctl.sdb.log 2>&1
	sudo smartctl -a /dev/sdc > $RESULTS/smartctl.sdc.log 2>&1
	sudo smartctl -a /dev/sdd > $RESULTS/smartctl.sdd.log 2>&1
	sudo smartctl -a /dev/sde > $RESULTS/smartctl.sde.log 2>&1
	sudo smartctl -a /dev/sdf > $RESULTS/smartctl.sdf.log 2>&1

	mount_opts="defaults,relatime,nobarrier,compress=lzo,nodiscard"

	sudo mount -o $mount_opts $DEVICE $MOUNT
	sudo chown postgres:postgres $MOUNT

	# create subvolume that we can snapshot
	sudo btrfs subvolume create $MOUNT/pg
	sudo chown postgres:postgres $MOUNT/pg

	./create-snapshots-btrfs.sh $MOUNT/pg >> $RESULTS/snapshots.log 2>&1 &
	pid=$!

	sudo btrfs filesystem df $MOUNT > $RESULTS/filesystem-df.log 2>&1
	sudo btrfs filesystem show $MOUNT > $RESULTS/filesystem-show.log 2>&1
	sudo btrfs filesystem usage $MOUNT > $RESULTS/filesystem-usage.log 2>&1

	mount > $RESULTS/mount.log 2>&1

	./run-one-fs.sh $RESULTS $MOUNT/pg

	kill $pid

	sudo umount $DEVICE

done

for opts in optimized; do
#for opts in none nobarrier compress nodatacow nodiscard all; do

        RESULTS=$OUTDIR/btrfs-no-compress

        if [ -d "$RESULTS" ]; then
                continue
        fi

	mkdir $RESULTS

        sudo mkfs.btrfs -f $DEVICE > $RESULTS/mkfs.log 2>&1

        lsblk > $RESULTS/lsblk.log 2>&1

        sudo mdadm --detail /dev/md127 > $RESULTS/mdadm.log 2>&1

        sudo smartctl -a /dev/sda > $RESULTS/smartctl.sda.log 2>&1
        sudo smartctl -a /dev/sdb > $RESULTS/smartctl.sdb.log 2>&1
        sudo smartctl -a /dev/sdc > $RESULTS/smartctl.sdc.log 2>&1
        sudo smartctl -a /dev/sdd > $RESULTS/smartctl.sdd.log 2>&1
        sudo smartctl -a /dev/sde > $RESULTS/smartctl.sde.log 2>&1
        sudo smartctl -a /dev/sdf > $RESULTS/smartctl.sdf.log 2>&1

        mount_opts="defaults,relatime,nobarrier,nodiscard"

        sudo mount -o $mount_opts $DEVICE $MOUNT
        sudo chown postgres:postgres $MOUNT

        # create subvolume that we can snapshot
        sudo btrfs subvolume create $MOUNT/pg
	sudo chown postgres:postgres $MOUNT/pg

        ./create-snapshots-btrfs.sh $MOUNT/pg >> $RESULTS/snapshots.log 2>&1 &
        pid=$!

        sudo btrfs filesystem df $MOUNT > $RESULTS/filesystem-df.log 2>&1
        sudo btrfs filesystem show $MOUNT > $RESULTS/filesystem-show.log 2>&1
        sudo btrfs filesystem usage $MOUNT > $RESULTS/filesystem-usage.log 2>&1

        mount > $RESULTS/mount.log 2>&1

        ./run-one-fs.sh $RESULTS $MOUNT/pg

	kill $pid

        sudo umount $DEVICE

done

