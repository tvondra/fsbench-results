#!/bin/bash -x

set -e

OUTDIR=$1
DEV=$2
PCT=$3

DEVICE=/dev/${DEV}n1p1
MOUNT=/mnt/nvme

for opts in optimized; do
#for opts in none ashift atime recordsize compression xattr logbias all; do

	RESULTS=$OUTDIR/zfs

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir -p $RESULTS

	# make sure to destroy any existing pools
	sudo zpool destroy -f data || true

	sudo zpool create -f -o ashift=12 data $DEVICE

	lsblk > $RESULTS/lsblk.log 2>&1

	sudo smartctl -a /dev/nvme0n1 > $RESULTS/smartctl.nvme0n1.log 2>&1
	#sudo smartctl -a /dev/nvme1n1 > $RESULTS/smartctl.nvme1n1.log 2>&1

	sudo zfs create -o mountpoint=/mnt/nvme data/pg

	sudo zfs set atime=off data/pg
	sudo zfs set recordsize=8192 data/pg
	sudo zfs set compression=lz4 data/pg
	sudo zfs set xattr=sa data/pg
	sudo zfs set logbias=throughput data/pg

        ./create-snapshots-zfs.sh $MOUNT/pg >> $RESULTS/snapshots.log 2>&1 &
        pid=$!

	sudo zpool get all data > $RESULTS/zpool-get-all.log 2>&1
	sudo zfs get all data/pg > $RESULTS/zpool-get-all.log 2>&1

	sudo chown postgres:postgres $MOUNT

	mount > $RESULTS/mount.log 2>&1

	cp postgresql-default.conf postgresql.conf

	./run-one-fs-throttled.sh $RESULTS $MOUNT $PCT 100734 5722 34661 50897

	sudo umount $MOUNT

	kill $pid

	sudo zpool destroy data

done
