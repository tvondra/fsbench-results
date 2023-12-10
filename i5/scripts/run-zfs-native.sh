#!/bin/bash -x

set -e

#DEVICE=/dev/md127p1
MOUNT=/mnt/raid

OUTDIR=$1


for opts in optimized; do
#for opts in none ashift atime recordsize compression xattr logbias all; do

	RESULTS=$OUTDIR/zfs

	if [ -d "$RESULTS" ]; then
		continue
	fi

	mkdir $RESULTS

	# make sure to destroy any existing pools
	sudo zpool destroy -f data || true

	sudo zpool create -f -o ashift=12 data /dev/sda1 /dev/sdb1 /dev/sdc1 /dev/sdd1 /dev/sde1 /dev/sdf1

	lsblk > $RESULTS/lsblk.log 2>&1

	#sudo mdadm --detail /dev/md127 > $RESULTS/mdadm.log 2>&1

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

	./run-one-fs.sh $RESULTS $MOUNT

	sudo umount $MOUNT

	sudo zpool destroy data

done

for opts in optimized; do
#for opts in none ashift atime recordsize compression xattr logbias all; do

        RESULTS=$OUTDIR/zfs-no-fpw

        if [ -d "$RESULTS" ]; then
                continue
        fi

        mkdir $RESULTS

        # make sure to destroy any existing pools
        sudo zpool destroy -f data || true

        sudo zpool create -f -o ashift=12 data /dev/sda1 /dev/sdb1 /dev/sdc1 /dev/sdd1 /dev/sde1 /dev/sdf1

        lsblk > $RESULTS/lsblk.log 2>&1

        #sudo mdadm --detail /dev/md127 > $RESULTS/mdadm.log 2>&1

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

        cp postgresql-no-fpw.conf postgresql.conf

        ./run-one-fs.sh $RESULTS $MOUNT

        sudo umount $MOUNT

        sudo zpool destroy data

done

for opts in optimized; do
#for opts in none ashift atime recordsize compression xattr logbias all; do

        RESULTS=$OUTDIR/zfs-no-compress

        if [ -d "$RESULTS" ]; then
                continue
        fi

        mkdir $RESULTS

        # make sure to destroy any existing pools
        sudo zpool destroy -f data || true

        sudo zpool create -f -o ashift=12 data /dev/sda1 /dev/sdb1 /dev/sdc1 /dev/sdd1 /dev/sde1 /dev/sdf1

        lsblk > $RESULTS/lsblk.log 2>&1

        # sudo mdadm --detail /dev/md127 > $RESULTS/mdadm.log 2>&1

        sudo smartctl -a /dev/sda > $RESULTS/smartctl.sda.log 2>&1
        sudo smartctl -a /dev/sdb > $RESULTS/smartctl.sdb.log 2>&1
        sudo smartctl -a /dev/sdc > $RESULTS/smartctl.sdc.log 2>&1
        sudo smartctl -a /dev/sdd > $RESULTS/smartctl.sdd.log 2>&1
        sudo smartctl -a /dev/sde > $RESULTS/smartctl.sde.log 2>&1
        sudo smartctl -a /dev/sdf > $RESULTS/smartctl.sdf.log 2>&1

        sudo zfs create -o mountpoint=$MOUNT data/pg

        sudo zfs set atime=off data/pg
        sudo zfs set recordsize=8192 data/pg
        sudo zfs set xattr=sa data/pg
        sudo zfs set logbias=throughput data/pg

        sudo zpool get all data > $RESULTS/zpool-get-all.log 2>&1
        sudo zfs get all data/pg > $RESULTS/zpool-get-all.log 2>&1

        sudo chown postgres:postgres $MOUNT

        mount > $RESULTS/mount.log 2>&1

        cp postgresql-default.conf postgresql.conf

        ./run-one-fs.sh $RESULTS $MOUNT

        sudo umount $MOUNT

        sudo zpool destroy data

done
