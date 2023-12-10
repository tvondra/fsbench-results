#!/bin/bash -x

set -e

MAIN_DEVICE=/dev/nvme1n1p1
DEVICE=/dev/vg0/lvol0
MOUNT=/mnt/nvme

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

sudo sysctl -w vm.dirty_background_bytes=$((32*1024*1024))

for opts in all; do
#for opts in none nobarrier discard stripe fast_commit all; do

	RESULTS=$OUTDIR/ext4

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir -p $RESULTS

	sysctl -a > $RESULTS/sysctl.log 2>&1

        # recreate the LVM device
        lvm_cleanup $MAIN_DEVICE
        lvm_create $MAIN_DEVICE $RESULTS

        ./create-snapshots.sh >> $RESULTS/snapshots.log 2>&1 &
        pid=$!

	sudo mkfs.ext4 -F $DEVICE > $RESULTS/mkfs.log 2>&1

	sudo tune2fs -O fast_commit $DEVICE

	lsblk > $RESULTS/lsblk.log 2>&1

	sudo smartctl -a /dev/nvme1n1 > $RESULTS/smartctl.nvme1n1.log 2>&1
	#sudo smartctl -a /dev/nvme1n1 > $RESULTS/smartctl.nvme1n1.log 2>&1

	mount_opts="defaults,relatime"

	mount_opts="defaults,relatime,barrier=0,discard"
	sudo tune2fs -O extent $DEVICE

	sudo tune2fs -l $DEVICE > $RESULTS/tune2fs.log 2>&1
	sudo dumpe2fs $DEVICE > $RESULTS/dumpe2fs.log 2>&1

	sudo mount -o $mount_opts $DEVICE $MOUNT
	sudo chown postgres:postgres $MOUNT

	mount > $RESULTS/mount.log 2>&1

	cp postgresql-default.conf postgresql.conf

	./run-one-fs.sh $RESULTS $MOUNT

	sudo umount $DEVICE

	kill $pid

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

	sysctl -a > $RESULTS/sysctl.log 2>&1

        # recreate the LVM device
        lvm_cleanup $MAIN_DEVICE
        lvm_create $MAIN_DEVICE $RESULTS

        ./create-snapshots.sh >> $RESULTS/snapshots.log 2>&1 &
        pid=$!

	sudo mkfs.xfs -f $DEVICE > $RESULTS/mkfs.log 2>&1

	sudo xfs_info $DEVICE > $RESULTS/xfs_info.log 2>&1

	lsblk > $RESULTS/lsblk.log 2>&1

	#sudo mdadm --detail /dev/md127 > $RESULTS/mdadm.log 2>&1

	sudo smartctl -a /dev/nvme1n1 > $RESULTS/smartctl.nvme1n1.log 2>&1
	#sudo smartctl -a /dev/nvme1n1 > $RESULTS/smartctl.nvme1n1.log 2>&1

	mount_opts="defaults,relatime,discard"

	sudo mount -o $mount_opts $DEVICE $MOUNT
	sudo chown postgres:postgres $MOUNT

	mount > $RESULTS/mount.log 2>&1

	cp postgresql-default.conf postgresql.conf

	./run-one-fs.sh $RESULTS $MOUNT

	sudo umount $DEVICE

	kill $pid

        # remove the LVM device
        lvm_cleanup $MAIN_DEVICE

done


for opts in optimized; do
#for opts in none nobarrier compress nodatacow nodiscard all; do

	RESULTS=$OUTDIR/btrfs

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir -p $RESULTS

	sysctl -a > $RESULTS/sysctl.log 2>&1

        # recreate the LVM device
        lvm_cleanup $MAIN_DEVICE
        lvm_create $MAIN_DEVICE $RESULTS

        ./create-snapshots.sh >> $RESULTS/snapshots.log 2>&1 &
        pid=$!

	sudo mkfs.btrfs -f $DEVICE > $RESULTS/mkfs.log 2>&1

	lsblk > $RESULTS/lsblk.log 2>&1

	# sudo mdadm --detail /dev/md127 > $RESULTS/mdadm.log 2>&1

	sudo smartctl -a /dev/nvme0n1 > $RESULTS/smartctl.nvme0n1.log 2>&1
	#sudo smartctl -a /dev/nvme1n1 > $RESULTS/smartctl.nvme1n1.log 2>&1

	mount_opts="defaults,relatime,nobarrier,compress=lzo,nodiscard"

	sudo mount -o $mount_opts $DEVICE $MOUNT
	sudo chown postgres:postgres $MOUNT

	sudo btrfs filesystem df $MOUNT > $RESULTS/filesystem-df.log 2>&1
	sudo btrfs filesystem show $MOUNT > $RESULTS/filesystem-show.log 2>&1
	sudo btrfs filesystem usage $MOUNT > $RESULTS/filesystem-usage.log 2>&1

	mount > $RESULTS/mount.log 2>&1

	./run-one-fs.sh $RESULTS $MOUNT

	sudo umount $DEVICE

	kill $pid

        # remove the LVM device
        lvm_cleanup $MAIN_DEVICE

done

for opts in optimized; do
#for opts in none nobarrier compress nodatacow nodiscard all; do

        RESULTS=$OUTDIR/btrfs-no-compress

        if [ -d "$RESULTS" ]; then
                continue
        fi

	mkdir -p $RESULTS

	sysctl -a > $RESULTS/sysctl.log 2>&1

        # recreate the LVM device
        lvm_cleanup $MAIN_DEVICE
        lvm_create $MAIN_DEVICE $RESULTS

        ./create-snapshots.sh >> $RESULTS/snapshots.log 2>&1 &
        pid=$!

        sudo mkfs.btrfs -f $DEVICE > $RESULTS/mkfs.log 2>&1

        lsblk > $RESULTS/lsblk.log 2>&1

        # sudo mdadm --detail /dev/md127 > $RESULTS/mdadm.log 2>&1

        sudo smartctl -a /dev/nvme0n1 > $RESULTS/smartctl.nvme0n1.log 2>&1
        #sudo smartctl -a /dev/nvme1n1 > $RESULTS/smartctl.nvme1n1.log 2>&1

        mount_opts="defaults,relatime,nobarrier,nodiscard"

        sudo mount -o $mount_opts $DEVICE $MOUNT
        sudo chown postgres:postgres $MOUNT

        sudo btrfs filesystem df $MOUNT > $RESULTS/filesystem-df.log 2>&1
        sudo btrfs filesystem show $MOUNT > $RESULTS/filesystem-show.log 2>&1
        sudo btrfs filesystem usage $MOUNT > $RESULTS/filesystem-usage.log 2>&1

        mount > $RESULTS/mount.log 2>&1

        ./run-one-fs.sh $RESULTS $MOUNT

        sudo umount $DEVICE

	kill $pid

        # remove the LVM device
        lvm_cleanup $MAIN_DEVICE

done
