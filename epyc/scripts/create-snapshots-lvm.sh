#!/bin/bash

# create a snapshot every 5 minutes
INTERVAL=$((5*60))

while /bin/true; do

	d=`date +%Y%m%d%H%M`

	echo `date` "current snapshots"

	sudo lvs -a -o +devices,segtype vg0

	echo `date` "create snapshot $d"

	#sudo lvcreate -l 10%VG -s -n snap_$d /dev/vg0/lvol0
	sudo lvcreate -L 500G -i 4 -I 512k -s -n snap_$d /dev/vg0/lvol0

	# delete snapshots except for 4 most recent ones
	for s in `ls -n /dev/vg0/snap_* | head -n -4 | awk '{print $9}'`; do
		sudo lvremove -f $s
	done

	sleep $((INTERVAL))

done
