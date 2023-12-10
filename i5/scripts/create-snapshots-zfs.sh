#!/bin/bash

# create a snapshot every 5 minutes
INTERVAL=$((5*60))

while /bin/true; do

	d=`date +%Y%m%d%H%M`

	echo `date` "create snapshot $d"

	sudo zfs snapshot data/pg@snap_$d

	# delete snapshots except for 4 most recent ones
	for s in `sudo zfs list -t snapshot data/pg | grep snap_ | head -n -4 | awk '{print $1}'`; do
		sudo zfs destroy $s
	done

	sleep $((INTERVAL))

done

