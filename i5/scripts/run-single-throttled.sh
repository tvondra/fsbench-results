#!/bin/bash -x

set -e

DEVICE=/dev/md0p1
MOUNT=/mnt/raid

OUTDIR=$1
PCT=$2

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

	sudo mdadm --detail /dev/md0 > $RESULTS/mdadm.log 2>&1

	sudo smartctl -a /dev/sda > $RESULTS/smartctl.sda.log 2>&1
	sudo smartctl -a /dev/sdb > $RESULTS/smartctl.sdb.log 2>&1
	sudo smartctl -a /dev/sdc > $RESULTS/smartctl.sdc.log 2>&1
	sudo smartctl -a /dev/sdd > $RESULTS/smartctl.sdd.log 2>&1
	sudo smartctl -a /dev/sde > $RESULTS/smartctl.sde.log 2>&1
	sudo smartctl -a /dev/sdf > $RESULTS/smartctl.sdf.log 2>&1

	sudo tune2fs -l $DEVICE > $RESULTS/tune2fs.log 2>&1
	sudo dumpe2fs $DEVICE > $RESULTS/dumpe2fs.log 2>&1

	# 64kB chunk * 6 drives = 384kB = 94 blocks (4kB each)
	sudo mount -o "defaults,relatime,barrier=0,discard,stripe=96" $DEVICE $MOUNT
	sudo chown postgres:postgres $MOUNT

	mount > $RESULTS/mount.log 2>&1

	cp postgresql-default.conf postgresql.conf

	./run-one-fs-throttled.sh $RESULTS $MOUNT $PCT 56376 9901 12435 13810

	sudo umount $DEVICE

done



# xfs tests

for opts in all; do
#for opts in none discard stripe all; do

	RESULTS=$OUTDIR/xfs

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir $RESULTS

	# 64KB chunks, 6 data drives (RAID0)
	sudo mkfs.xfs -f -d su=64k,sw=6 $DEVICE > $RESULTS/mkfs.log 2>&1

	sudo xfs_info $DEVICE > $RESULTS/xfs_info.log 2>&1

	lsblk > $RESULTS/lsblk.log 2>&1

	sudo mdadm --detail /dev/md0 > $RESULTS/mdadm.log 2>&1

	sudo smartctl -a /dev/sda > $RESULTS/smartctl.sda.log 2>&1
	sudo smartctl -a /dev/sdb > $RESULTS/smartctl.sdb.log 2>&1
	sudo smartctl -a /dev/sdc > $RESULTS/smartctl.sdc.log 2>&1
	sudo smartctl -a /dev/sdd > $RESULTS/smartctl.sdd.log 2>&1
	sudo smartctl -a /dev/sde > $RESULTS/smartctl.sde.log 2>&1
	sudo smartctl -a /dev/sdf > $RESULTS/smartctl.sdf.log 2>&1

	sudo mount -o "defaults,relatime,discard" $DEVICE $MOUNT

	sudo chown postgres:postgres $MOUNT

	mount > $RESULTS/mount.log 2>&1

	cp postgresql-default.conf postgresql.conf

	./run-one-fs-throttled.sh $RESULTS $MOUNT $PCT 55335 7864 11621 12964

	sudo umount $DEVICE

done

for opts in optimized; do
#for opts in none nobarrier compress nodatacow nodiscard all; do

	RESULTS=$OUTDIR/btrfs

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir $RESULTS

	sudo mkfs.btrfs -f $DEVICE > $RESULTS/mkfs.log 2>&1

	lsblk > $RESULTS/lsblk.log 2>&1

	sudo mdadm --detail /dev/md0 > $RESULTS/mdadm.log 2>&1

	sudo smartctl -a /dev/sda > $RESULTS/smartctl.sda.log 2>&1
	sudo smartctl -a /dev/sdb > $RESULTS/smartctl.sdb.log 2>&1
	sudo smartctl -a /dev/sdc > $RESULTS/smartctl.sdc.log 2>&1
	sudo smartctl -a /dev/sdd > $RESULTS/smartctl.sdd.log 2>&1
	sudo smartctl -a /dev/sde > $RESULTS/smartctl.sde.log 2>&1
	sudo smartctl -a /dev/sdf > $RESULTS/smartctl.sdf.log 2>&1

	mount_opts="defaults,relatime,nobarrier,compress=lzo,nodiscard"

	sudo mount -o $mount_opts $DEVICE $MOUNT
	sudo chown postgres:postgres $MOUNT

	sudo btrfs filesystem df $MOUNT > $RESULTS/filesystem-df.log 2>&1
	sudo btrfs filesystem show $MOUNT > $RESULTS/filesystem-show.log 2>&1
	sudo btrfs filesystem usage $MOUNT > $RESULTS/filesystem-usage.log 2>&1

	mount > $RESULTS/mount.log 2>&1

	./run-one-fs-throttled.sh $RESULTS $MOUNT $PCT 45624 3978 6501 10665

	sudo umount $DEVICE

done

for opts in optimized; do
#for opts in none ashift atime recordsize compression xattr logbias all; do

	RESULTS=$OUTDIR/zfs

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir $RESULTS

	# make sure to destroy any existing pools
	sudo zpool destroy -f data || true

	sudo zpool create -f -o ashift=12 data $DEVICE

	lsblk > $RESULTS/lsblk.log 2>&1

	sudo mdadm --detail /dev/md0 > $RESULTS/mdadm.log 2>&1

	sudo smartctl -a /dev/sda > $RESULTS/smartctl.sda.log 2>&1
	sudo smartctl -a /dev/sdb > $RESULTS/smartctl.sdb.log 2>&1
	sudo smartctl -a /dev/sdc > $RESULTS/smartctl.sdc.log 2>&1
	sudo smartctl -a /dev/sdd > $RESULTS/smartctl.sdd.log 2>&1
	sudo smartctl -a /dev/sde > $RESULTS/smartctl.sde.log 2>&1
	sudo smartctl -a /dev/sdf > $RESULTS/smartctl.sdf.log 2>&1

	sudo zfs create -o mountpoint=$MOUNT data/pg

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

	./run-one-fs-throttled.sh $RESULTS $MOUNT $PCT 39317 4396 9108 11743

	sudo umount $MOUNT

	sudo zpool destroy data

done
