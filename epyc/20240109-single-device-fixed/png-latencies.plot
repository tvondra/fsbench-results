set terminal postscript eps size 20,10 enhanced color font 'Helvetica,12'
set output 'latencies.eps'

set title "latencies" font 'Helvetica,24'

set xrange [0:7200]
set yrange [0:]
set logscale y

set multiplot layout 4,4 rowsfirst
set yrange [100:1000000]
set title 'btrfs / rw / 200'
plot 'btrfs/200/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/200/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/200/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/200/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/200/rw/128/summary.data' using 1:4 with lines title 'p25'

set title 'ext4 / rw / 200'
plot 'ext4/200/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'ext4/200/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'ext4/200/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'ext4/200/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'ext4/200/rw/128/summary.data' using 1:4 with lines title 'p25'

set title 'xfs / rw / 200'
plot 'xfs/200/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'xfs/200/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'xfs/200/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'xfs/200/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'xfs/200/rw/128/summary.data' using 1:4 with lines title 'p25'

set title 'zfs / rw / 200'
plot 'zfs/200/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'zfs/200/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'zfs/200/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'zfs/200/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'zfs/200/rw/128/summary.data' using 1:4 with lines title 'p25'


set yrange [100000000:100000]

set yrange [100:10000000]
set title 'btrfs / rw / 2000'
plot 'btrfs/2000/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/2000/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/2000/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/2000/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/2000/rw/128/summary.data' using 1:4 with lines title 'p25'

set title 'ext4 / rw / 2000'
plot 'ext4/2000/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'ext4/2000/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'ext4/2000/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'ext4/2000/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'ext4/2000/rw/128/summary.data' using 1:4 with lines title 'p25'

set title 'xfs / rw / 2000'
plot 'xfs/2000/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'xfs/2000/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'xfs/2000/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'xfs/2000/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'xfs/2000/rw/128/summary.data' using 1:4 with lines title 'p25'

set title 'zfs / rw / 2000'
plot 'zfs/2000/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'zfs/2000/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'zfs/2000/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'zfs/2000/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'zfs/2000/rw/128/summary.data' using 1:4 with lines title 'p25'


set yrange [100000000:100000]

set yrange [1000:100000000]
set title 'btrfs / rw / 20000'
plot 'btrfs/20000/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/20000/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/20000/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/20000/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/20000/rw/128/summary.data' using 1:4 with lines title 'p25'

set title 'ext4 / rw / 20000'
plot 'ext4/20000/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'ext4/20000/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'ext4/20000/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'ext4/20000/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'ext4/20000/rw/128/summary.data' using 1:4 with lines title 'p25'

set title 'xfs / rw / 20000'
plot 'xfs/20000/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'xfs/20000/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'xfs/20000/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'xfs/20000/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'xfs/20000/rw/128/summary.data' using 1:4 with lines title 'p25'

set title 'zfs / rw / 20000'
plot 'zfs/20000/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'zfs/20000/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'zfs/20000/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'zfs/20000/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'zfs/20000/rw/128/summary.data' using 1:4 with lines title 'p25'


set yrange [100:100000]
set title 'btrfs / ro / 20000'
plot 'btrfs/20000/ro/128/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/20000/ro/128/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/20000/ro/128/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/20000/ro/128/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/20000/ro/128/summary.data' using 1:4 with lines title 'p25'

set title 'ext4 / ro / 20000'
plot 'ext4/20000/ro/128/summary.data' using 1:8 with lines title 'p99', \
     'ext4/20000/ro/128/summary.data' using 1:7 with lines title 'p95', \
     'ext4/20000/ro/128/summary.data' using 1:6 with lines title 'p75', \
     'ext4/20000/ro/128/summary.data' using 1:5 with lines title 'p50', \
     'ext4/20000/ro/128/summary.data' using 1:4 with lines title 'p25'

set title 'xfs / ro / 20000'
plot 'xfs/20000/ro/128/summary.data' using 1:8 with lines title 'p99', \
     'xfs/20000/ro/128/summary.data' using 1:7 with lines title 'p95', \
     'xfs/20000/ro/128/summary.data' using 1:6 with lines title 'p75', \
     'xfs/20000/ro/128/summary.data' using 1:5 with lines title 'p50', \
     'xfs/20000/ro/128/summary.data' using 1:4 with lines title 'p25'

set title 'zfs / ro / 20000'
plot 'zfs/20000/ro/128/summary.data' using 1:8 with lines title 'p99', \
     'zfs/20000/ro/128/summary.data' using 1:7 with lines title 'p95', \
     'zfs/20000/ro/128/summary.data' using 1:6 with lines title 'p75', \
     'zfs/20000/ro/128/summary.data' using 1:5 with lines title 'p50', \
     'zfs/20000/ro/128/summary.data' using 1:4 with lines title 'p25'


