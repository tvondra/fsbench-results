#!/bin/bash -x

set -e

OUTDIR=$1
DEV=$2
PCT=$3

DEVICE=/dev/${DEV}n1p1
MOUNT=/mnt/nvme

# ext4 tests

for opts in all; do
#for opts in none nobarrier discard stripe fast_commit all; do

	RESULTS=$OUTDIR/ext4

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir -p $RESULTS

	sudo mkfs.ext4 -F $DEVICE > $RESULTS/mkfs.log 2>&1

	sudo tune2fs -O fast_commit $DEVICE

	lsblk > $RESULTS/lsblk.log 2>&1

	sudo smartctl -a /dev/${DEV} > $RESULTS/smartctl.$DEV.log 2>&1

	mount_opts="defaults,relatime"

	mount_opts="defaults,relatime,barrier=0,discard"
	sudo tune2fs -O extent $DEVICE

	sudo tune2fs -l $DEVICE > $RESULTS/tune2fs.log 2>&1
	sudo dumpe2fs $DEVICE > $RESULTS/dumpe2fs.log 2>&1

	sudo mount -o $mount_opts $DEVICE $MOUNT
	sudo chown postgres:postgres $MOUNT

	mount > $RESULTS/mount.log 2>&1

	cp postgresql-default.conf postgresql.conf

	./run-one-fs-throttled.sh $RESULTS $MOUNT $PCT 214907 30360 48259 63051

	sudo umount $DEVICE

done



# xfs tests

for opts in all; do
#for opts in none discard stripe all; do

	RESULTS=$OUTDIR/xfs

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir -p $RESULTS

	sudo mkfs.xfs -f $DEVICE > $RESULTS/mkfs.log 2>&1

	sudo xfs_info $DEVICE > $RESULTS/xfs_info.log 2>&1

	lsblk > $RESULTS/lsblk.log 2>&1

	sudo smartctl -a /dev/${DEV} > $RESULTS/smartctl.$DEV.log 2>&1

	mount_opts="defaults,relatime,discard"

	sudo mount -o $mount_opts $DEVICE $MOUNT
	sudo chown postgres:postgres $MOUNT

	mount > $RESULTS/mount.log 2>&1

	cp postgresql-default.conf postgresql.conf

	./run-one-fs-throttled.sh $RESULTS $MOUNT $PCT 214296 31053 48297 63025

	sudo umount $DEVICE

done

for opts in optimized; do
#for opts in none nobarrier compress nodatacow nodiscard all; do

	RESULTS=$OUTDIR/btrfs

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir -p $RESULTS

	sudo mkfs.btrfs -f $DEVICE > $RESULTS/mkfs.log 2>&1

	lsblk > $RESULTS/lsblk.log 2>&1

	sudo smartctl -a /dev/${DEV} > $RESULTS/smartctl.$DEV.log 2>&1

	mount_opts="defaults,relatime,nobarrier,compress=lzo,nodiscard"

	sudo mount -o $mount_opts $DEVICE $MOUNT
	sudo chown postgres:postgres $MOUNT

	sudo btrfs filesystem df $MOUNT > $RESULTS/filesystem-df.log 2>&1
	sudo btrfs filesystem show $MOUNT > $RESULTS/filesystem-show.log 2>&1
	sudo btrfs filesystem usage $MOUNT > $RESULTS/filesystem-usage.log 2>&1

	mount > $RESULTS/mount.log 2>&1

	./run-one-fs-throttled.sh $RESULTS $MOUNT $PCT 186128 5276 17595 39886

	sudo umount $DEVICE

done

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

	sudo smartctl -a /dev/${DEV} > $RESULTS/smartctl.$DEV.log 2>&1

	sudo zfs create -o mountpoint=/mnt/nvme data/pg

	sudo zfs set atime=off data/pg
	sudo zfs set recordsize=8192 data/pg
	sudo zfs set compression=lz4 data/pg
	sudo zfs set xattr=sa data/pg
	sudo zfs set logbias=throughput data/pg

	sudo zpool get all data > $RESULTS/zpool-get-all.log 2>&1
	sudo zfs get all data/pg > $RESULTS/zpool-get-all.log 2>&1

	sudo chown postgres:postgres $MOUNT

	mount > $RESULTS/mount.log 2>&1

	cp postgresql-default.conf postgresql.conf

	./run-one-fs-throttled.sh $RESULTS $MOUNT $PCT 100186 5869 36591 51553

	sudo umount $MOUNT

	sudo zpool destroy data

done
