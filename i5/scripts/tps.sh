#!/bin/bash

ts_prev=''
ts_first=''
xact_prev=''

while IFS= read -r line; do

	ts=`echo "$line" | sed 's/|/ /g' | awk '{print $1}'`
	xact=`echo "$line" | sed 's/|/ /g' | awk '{print $7}'`

	if [ "$xact" == "" ]; then
		continue
	elif [ "$ts" == "epoch" ]; then
		continue
	fi

	if [ "$ts_prev" != "" ]; then
		tps=`echo "($xact-$xact_prev)/($ts - $ts_prev)" | bc`
		delta=`echo "($ts - $ts_prev)" | bc`
		tsrel=`echo "($ts - $ts_first)" | bc`
		echo $tsrel $delta $tps
	fi

	ts_prev=$ts
	xact_prev=$xact

	if [ "$ts_first" == "" ]; then
		ts_first=$ts
	fi

done < $1
