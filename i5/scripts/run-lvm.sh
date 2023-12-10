#!/bin/bash -x

set -e

MAIN_DEVICE=/dev/md127p1
DEVICE=/dev/vg0/lvol0
MOUNT=/mnt/raid

LVM_VG=vg0
LVM_DEVICE=lvol0

OUTDIR=$1

# make sure to remove all pre-existing LVM stuff
function lvm_cleanup () {
	sudo lvremove -f /dev/vg0/lvol0 || true
	sudo vgremove -f /dev/vg0 || true
	sudo pvremove -f $1 || true
}

# now create all LVM stuff from scratch
function lvm_create() {
	sudo pvcreate -f $1 > $2/lvm.log 2>&1
	sudo vgcreate vg0 $1 >> $2/lvm.log 2>&1
	sudo lvcreate -y --extents 50%FREE --name lvol0 vg0 >> $2/lvm.log 2>&1
}

# ext4 tests

for opts in all; do
#for opts in none nobarrier discard stripe fast_commit all; do

	RESULTS=$OUTDIR/ext4

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir -p $RESULTS

	sudo umount $MOUNT || true

	# recreate the LVM device
	lvm_cleanup $MAIN_DEVICE
	lvm_create $MAIN_DEVICE $RESULTS

	sudo mkfs.ext4 -F $DEVICE > $RESULTS/mkfs.log 2>&1

	sudo tune2fs -O fast_commit $DEVICE

	lsblk > $RESULTS/lsblk.log 2>&1

	sudo mdadm --detail /dev/md127 > $RESULTS/mdadm.log 2>&1

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

	./run-one-fs.sh $RESULTS $MOUNT

	sudo umount $DEVICE

	# remove the LVM device
	lvm_cleanup $MAIN_DEVICE

done



# xfs tests

for opts in all; do
#for opts in none discard stripe all; do

	RESULTS=$OUTDIR/xfs

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir -p $RESULTS

        sudo umount $MOUNT || true

        # recreate the LVM device
        lvm_cleanup $MAIN_DEVICE
        lvm_create $MAIN_DEVICE $RESULTS

	# 64KB chunks, 6 data drives (RAID0)
	sudo mkfs.xfs -f -d su=64k,sw=6 $DEVICE > $RESULTS/mkfs.log 2>&1

	sudo xfs_info $DEVICE > $RESULTS/xfs_info.log 2>&1

	lsblk > $RESULTS/lsblk.log 2>&1

	sudo mdadm --detail /dev/md127 > $RESULTS/mdadm.log 2>&1

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

	./run-one-fs.sh $RESULTS $MOUNT

	sudo umount $DEVICE

        # remove the LVM device
        lvm_cleanup $MAIN_DEVICE
done

