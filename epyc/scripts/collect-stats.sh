#!/bin/sh

OUTDIR=$1

psql test -A -c "select extract(epoch from now()) AS epoch, now() AS ts, * from pg_stat_database where datname = 'test'" >> $OUTDIR/stat-database.csv 2>&1
psql test -A -c "select extract(epoch from now()) AS epoch, now() AS ts, pg_current_wal_lsn() AS lsn, * from pg_stat_bgwriter" >> $OUTDIR/stat-bgwriter.csv 2>&1

while /bin/true; do

	sleep 1

	psql test -t -A -c " select extract(epoch from now()) AS epoch, now() AS ts, * from pg_stat_database where datname = 'test'" >> $OUTDIR/stat-database.csv 2>&1
	psql test -t -A -c "select extract(epoch from now()) AS epoch, now() AS ts, pg_current_wal_lsn() AS lsn, * from pg_stat_bgwriter" >> $OUTDIR/stat-bgwriter.csv 2>&1

done
