#!/bin/bash -x

set -e

MAIN_DEVICES="/dev/nvme0n1p1 /dev/nvme1n1p1 /dev/nvme4n1p1 /dev/nvme5n1p1"
DEVICE=/dev/vg0/lvol0
MOUNT=/mnt/pgdata
USER="tomas"

LVM_VG=vg0
LVM_DEVICE=lvol0

OUTDIR=$1

# make sure to remove all pre-existing LVM stuff
function lvm_cleanup () {
        sudo lvremove -f /dev/vg0/lvol0 || true
        sudo vgremove -f /dev/vg0 || true

	for d in $1; do
	        sudo pvremove -f $d || true
	done
}

# now create all LVM stuff from scratch
function lvm_create() {

	for d in $1; do
	        sudo pvcreate -f $d > $2/lvm.log 2>&1
	done

        sudo vgcreate vg0 $1 >> $2/lvm.log 2>&1
        sudo lvcreate -y -i 4 -I 512k --extents 50%FREE --name lvol0 vg0 >> $2/lvm.log 2>&1
}

sudo sysctl -w vm.dirty_background_bytes=$((32*1024*1024))

for opts in all; do
#for opts in none nobarrier discard stripe fast_commit all; do

	RESULTS=$OUTDIR/ext4

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir -p $RESULTS

	sudo sysctl -a > $RESULTS/sysctl.log 2>&1

        # recreate the LVM device
        lvm_cleanup "$MAIN_DEVICES"
        lvm_create "$MAIN_DEVICES" $RESULTS

        ./create-snapshots-lvm.sh >> $RESULTS/snapshots.log 2>&1 &
        pid=$!

	sudo mkfs.ext4 -F $DEVICE > $RESULTS/mkfs.log 2>&1

	sudo tune2fs -O fast_commit $DEVICE

	lsblk > $RESULTS/lsblk.log 2>&1

	sudo lvdisplay > $RESULTS/lvdisplay.log 2>&1
	sudo vgdisplay > $RESULTS/vgdisplay.log 2>&1
	sudo pvdisplay > $RESULTS/pvdisplay.log 2>&1
	sudo lvs -a -o +devices,segtype vg0 > $RESULTS/lvs.log 2>&1

        for d in $(ls /dev | grep 'nvme.*n1$'); do
                sudo smartctl -a /dev/$d > $RESULTS/smartctl.$d.log 2>&1
        done

	mount_opts="defaults,relatime"

	mount_opts="defaults,relatime,barrier=0,discard"
	sudo tune2fs -O extent $DEVICE

	sudo tune2fs -l $DEVICE > $RESULTS/tune2fs.log 2>&1
	sudo dumpe2fs $DEVICE > $RESULTS/dumpe2fs.log 2>&1

	sudo mount -o $mount_opts $DEVICE $MOUNT
	sudo chown $USER:$USER $MOUNT

	mount > $RESULTS/mount.log 2>&1

	cp postgresql-default.conf postgresql.conf

	./run-one-fs.sh $RESULTS $MOUNT

	sudo umount $DEVICE

	kill $pid

        # remove the LVM device
        lvm_cleanup "$MAIN_DEVICES"
done



# xfs tests

for opts in all; do
#for opts in none discard stripe all; do

	RESULTS=$OUTDIR/xfs

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir -p $RESULTS

	sudo sysctl -a > $RESULTS/sysctl.log 2>&1

        # recreate the LVM device
        lvm_cleanup "$MAIN_DEVICES"
        lvm_create "$MAIN_DEVICES" $RESULTS

        ./create-snapshots-lvm.sh >> $RESULTS/snapshots.log 2>&1 &
        pid=$!

	sudo mkfs.xfs -f $DEVICE > $RESULTS/mkfs.log 2>&1

	sudo xfs_info $DEVICE > $RESULTS/xfs_info.log 2>&1

	lsblk > $RESULTS/lsblk.log 2>&1

        sudo lvdisplay > $RESULTS/lvdisplay.log 2>&1
        sudo vgdisplay > $RESULTS/vgdisplay.log 2>&1
        sudo pvdisplay > $RESULTS/pvdisplay.log 2>&1
        sudo lvs -a -o +devices,segtype vg0 > $RESULTS/lvs.log 2>&1

        for d in $(ls /dev | grep 'nvme.*n1$'); do
                sudo smartctl -a /dev/$d > $RESULTS/smartctl.$d.log 2>&1
        done

	mount_opts="defaults,relatime,discard"

	sudo mount -o $mount_opts $DEVICE $MOUNT
	sudo chown $USER:$USER $MOUNT

	mount > $RESULTS/mount.log 2>&1

	cp postgresql-default.conf postgresql.conf

	./run-one-fs.sh $RESULTS $MOUNT

	sudo umount $DEVICE

	kill $pid

        # remove the LVM device
        lvm_cleanup "$MAIN_DEVICES"

done


for opts in optimized; do
#for opts in none nobarrier compress nodatacow nodiscard all; do

	RESULTS=$OUTDIR/btrfs

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir -p $RESULTS

	sudo sysctl -a > $RESULTS/sysctl.log 2>&1

        # recreate the LVM device
        lvm_cleanup "$MAIN_DEVICES"
        lvm_create "$MAIN_DEVICES" $RESULTS

        ./create-snapshots-lvm.sh >> $RESULTS/snapshots.log 2>&1 &
        pid=$!

	sudo mkfs.btrfs -f $DEVICE > $RESULTS/mkfs.log 2>&1

	lsblk > $RESULTS/lsblk.log 2>&1

        sudo lvdisplay > $RESULTS/lvdisplay.log 2>&1
        sudo vgdisplay > $RESULTS/vgdisplay.log 2>&1
        sudo pvdisplay > $RESULTS/pvdisplay.log 2>&1
        sudo lvs -a -o +devices,segtype vg0 > $RESULTS/lvs.log 2>&1

        for d in $(ls /dev | grep 'nvme.*n1$'); do
                sudo smartctl -a /dev/$d > $RESULTS/smartctl.$d.log 2>&1
        done

	mount_opts="defaults,relatime,nobarrier,compress=lzo,nodiscard"

	sudo mount -o $mount_opts $DEVICE $MOUNT
	sudo chown $USER:$USER $MOUNT

	sudo btrfs filesystem df $MOUNT > $RESULTS/filesystem-df.log 2>&1
	sudo btrfs filesystem show $MOUNT > $RESULTS/filesystem-show.log 2>&1
	sudo btrfs filesystem usage $MOUNT > $RESULTS/filesystem-usage.log 2>&1

	mount > $RESULTS/mount.log 2>&1

	./run-one-fs.sh $RESULTS $MOUNT

	sudo umount $DEVICE

	kill $pid

        # remove the LVM device
        lvm_cleanup "$MAIN_DEVICES"

done
