#!/bin/bash -x

set -e

OUTDIR=$1
MOUNT=$2

DURATION=$((2*3600))

LARGE=10000
MEDIUM=1000
SMALL=100

pg_ctl -D $MOUNT/pgdata init > $OUTDIR/pginit.log 2>&1

cp postgresql.conf $MOUNT/pgdata

pg_ctl -D $MOUNT/pgdata -w -l $OUTDIR/pg.log start > $OUTDIR/pgstart.log 2>&1

#for s in $MEDIUM; do
for s in $LARGE $MEDIUM $SMALL; do

	dropdb --if-exists test
	createdb test

	mkdir -p $OUTDIR/$s/init

	psql test -c 'select * from pg_settings' > $OUTDIR/$s/settings.log 2>&1

	rm -f wal.stats

	sudo rm /var/log/sa/*
	sleep 60

#	psql test -c "create extension amcheck"
	psql test -c "checkpoint"

	./collect-stats.sh $OUTDIR/$s/init &
	pid=$!

	pgbench -i -s $s test > $OUTDIR/$s/init.log 2>&1

	psql test -c "checkpoint"

	kill $pid

	# now run a pg_dump, to measure sequential performance
	echo `date` "pgdump start"
	pgdump_start=`date +%s`
	pg_dump test > /dev/null 2>&1
	pgdump_end=`date +%s`
	pgdump_duration=$((pgdump_end-pgdump_start))
	echo `date` "pgdump stop, $pgdump_duration"

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

		for c in 64; do
		#for c in 1 64; do
		#for c in 1 32; do

			j=1
			if [ "$c" == "64" ]; then
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

#			./run-amcheck.sh $OUTDIR/$s/$m/$c &
#			pid2=$!

			if [ "$m" == "ro" ]; then
				echo `date` "read-only $c clients"
				pgbench -S -M prepared -j $j -c $c -T $DURATION -l --sampling-rate=0.05 test > $OUTDIR/$s/$m/$c/pgbench.log 2>&1
			else
				echo `date` "read-write $c clients"
				pgbench -M prepared -j $j -c $c -T $DURATION -l --sampling-rate=0.05 test > $OUTDIR/$s/$m/$c/pgbench.log 2>&1
			fi

			psql test -c "checkpoint"

			kill $pid
#			kill $pid2

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
