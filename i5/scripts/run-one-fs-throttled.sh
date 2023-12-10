#!/bin/bash -x

set -e

OUTDIR=$1
MOUNT=$2
PCT=$3

LARGE_RO=$4
LARGE_RW=$5
MEDIUM_RW=$6
SMALL_RW=$7

LARGE_RO=$((LARGE_RO*PCT/100))
LARGE_RW=$((LARGE_RW*PCT/100))
MEDIUM_RW=$((MEDIUM_RW*PCT/100))
SMALL_RW=$((SMALL_RW*PCT/100))

DURATION=$((2*3600))

LARGE=2000
MEDIUM=500
SMALL=100

pg_ctl -D $MOUNT/pgdata -o "-k" init > $OUTDIR/pginit.log 2>&1

cp postgresql.conf $MOUNT/pgdata

pg_ctl -D $MOUNT/pgdata -w -l $OUTDIR/pg.log start > $OUTDIR/pgstart.log 2>&1

#for s in $MEDIUM; do
for s in $LARGE $MEDIUM $SMALL; do

	dropdb --if-exists test
	createdb test

	mkdir -p $OUTDIR/$s/init

	psql test -c 'select * from pg_settings' > $OUTDIR/$s/settings.log 2>&1

	rm -Rf wal.stats pgbench_log.*

	sudo rm /var/log/sa/*
	sleep 60

	psql test -c "checkpoint"

	./collect-stats.sh $OUTDIR/$s/init &
	pid=$!

	pgbench -i -s $s test > $OUTDIR/$s/init.log 2>&1

	psql test -c "checkpoint"

	kill $pid

	mv wal.stats $OUTDIR/$s

	mkdir -p $OUTDIR/$s/sar/
	cp /var/log/sa/* $OUTDIR/$s/sar
	pigz $OUTDIR/$s/sar/*

	sudo rm /var/log/sa/*
	sleep 60

	for m in ro rw; do

		if [ "$m" == "ro" ]; then
			if [ "$s" -lt "$LARGE" ]; then
				continue
			fi
		fi

		THROTTLE=0
		if [ "$s" == "$LARGE" ]; then
			if [ "$m" == "ro" ]; then
				THROTTLE=$LARGE_RO
			else
				THROTTLE=$LARGE_RW
			fi
		elif [ "$s" == "$MEDIUM" ]; then
			THROTTLE=$MEDIUM_RW
		elif [ "$s" == "$SMALL" ]; then
			THROTTLE=$SMALL_RW
		fi

		for c in 32; do
		#for c in 1 32; do

			j=1
			if [ "$c" == "32" ]; then
				j=8
			fi

			mkdir -p $OUTDIR/$s/$m/$c

			pg_ctl -D $MOUNT/pgdata -w -l $OUTDIR/$s/$m/$c/pg.log restart >> $OUTDIR/$s/$m/$c/pgstart.log 2>&1

			rm -f pgbench_log.*

			sudo rm /var/log/sa/*
			sleep 60

			psql test -c "checkpoint"

			./collect-stats.sh $OUTDIR/$s/$m/$c &
			pid=$!

			sudo iotop -k -b -t -d 10 -n $((DURATION/10)) -o > $OUTDIR/$s/$m/$c/iotop.log 2>&1 &

			if [ "$m" == "ro" ]; then
				echo `date` "read-only $c clients"
				pgbench -S -M prepared -j $j -c $c -T $DURATION -R $THROTTLE -l --sampling-rate=0.05 test > $OUTDIR/$s/$m/$c/pgbench.log 2>&1
			else
				echo `date` "read-write $c clients"
				pgbench -M prepared -j $j -c $c -T $DURATION -R $THROTTLE -l --sampling-rate=0.05 test > $OUTDIR/$s/$m/$c/pgbench.log 2>&1
			fi

			psql test -c "checkpoint"

			kill $pid

			mkdir -p $OUTDIR/$s/$m/$c/sar/
			cp /var/log/sa/* $OUTDIR/$s/$m/$c/sar
			pigz $OUTDIR/$s/$m/$c/sar/*

			mv wal.stats $OUTDIR/$s/$m/$c

			tar -czf $OUTDIR/$s/$m/$c/pgbench.tgz pgbench_log.*
			rm -f pgbench_log.*

		done

	done

done

pg_ctl -D $MOUNT/pgdata -w stop
