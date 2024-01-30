#!/bin/bash -x

set -e

MOUNT=/mnt/pgdata
USER=tomas

OUTDIR=$1

for opts in optimized; do
#for opts in none ashift atime recordsize compression xattr logbias all; do

	RESULTS=$OUTDIR/zfs

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir -p $RESULTS

	./collect-info.sh $RESULTS

	# make sure to destroy any existing pools
	sudo zpool destroy -f data || true

	sudo zpool create -f -o ashift=12 data /dev/nvme0n1p1 /dev/nvme1n1p1 /dev/nvme4n1p1 /dev/nvme5n1p1

	lsblk > $RESULTS/lsblk.log 2>&1

	for d in $(ls /dev | grep 'nvme.*n1$'); do
		sudo smartctl -a /dev/$d > $RESULTS/smartctl.$d.log 2>&1
	done

	sudo zfs create -o mountpoint=$MOUNT data/pg

	sudo zfs set atime=off data/pg
	sudo zfs set recordsize=8192 data/pg
	sudo zfs set compression=lz4 data/pg
	sudo zfs set xattr=sa data/pg
	sudo zfs set logbias=throughput data/pg

	sudo zpool get all data > $RESULTS/zpool-get-all.log 2>&1
	sudo zfs get all data/pg > $RESULTS/zpool-get-all.log 2>&1

	sudo chown $USER:$USER $MOUNT

	mount > $RESULTS/mount.log 2>&1

	cp postgresql-default.conf postgresql.conf

	./create-snapshots-zfs.sh $MOUNT/pg >> $RESULTS/snapshots.log 2>&1 &
	pid=$!

	./run-one-fs.sh $RESULTS $MOUNT

	kill $pid

	sudo umount $MOUNT

	sudo zpool destroy data

done
