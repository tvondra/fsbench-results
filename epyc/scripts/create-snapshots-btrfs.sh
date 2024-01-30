#!/bin/bash

# create a snapshot every 5 minutes
INTERVAL=$((5*60))
DIR=$1

mkdir $DIR/.snapshots

while /bin/true; do

        d=`date +%Y%m%d%H%M`

        echo `date` "create snapshot $d"

        sudo btrfs subvolume snapshot $DIR $DIR/.snapshots/snap_$d

        # delete snapshots except for 4 most recent ones
        for s in `ls -n $DIR/.snapshots | grep snap_ | head -n -4 | awk '{print $9}'`; do
                sudo btrfs subvolume delete $DIR/.snapshots/$s
        done

	sleep $((INTERVAL))

done
