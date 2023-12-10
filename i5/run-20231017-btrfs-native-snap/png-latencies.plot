set terminal postscript eps size 10,10 enhanced color font 'Helvetica,12'
set output 'latencies.eps'

set title "latencies" font 'Helvetica,24'

set xrange [0:7200]
set yrange [0:]
set logscale y

set multiplot layout 4,2 rowsfirst
set yrange [1000:10000000]
set title 'btrfs / rw / 100'
plot 'btrfs/100/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/100/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/100/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/100/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/100/rw/32/summary.data' using 1:4 with lines title 'p25'

set title 'btrfs-no-compress / rw / 100'
plot 'btrfs-no-compress/100/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs-no-compress/100/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs-no-compress/100/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs-no-compress/100/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs-no-compress/100/rw/32/summary.data' using 1:4 with lines title 'p25'


set yrange [100000000:100000]

set yrange [1000:100000000]
set title 'btrfs / rw / 500'
plot 'btrfs/500/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/500/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/500/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/500/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/500/rw/32/summary.data' using 1:4 with lines title 'p25'

set title 'btrfs-no-compress / rw / 500'
plot 'btrfs-no-compress/500/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs-no-compress/500/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs-no-compress/500/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs-no-compress/500/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs-no-compress/500/rw/32/summary.data' using 1:4 with lines title 'p25'


set yrange [100000000:100000]

set yrange [1000:100000000]
set title 'btrfs / rw / 2000'
plot 'btrfs/2000/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/2000/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/2000/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/2000/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/2000/rw/32/summary.data' using 1:4 with lines title 'p25'

set title 'btrfs-no-compress / rw / 2000'
plot 'btrfs-no-compress/2000/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs-no-compress/2000/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs-no-compress/2000/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs-no-compress/2000/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs-no-compress/2000/rw/32/summary.data' using 1:4 with lines title 'p25'


set yrange [100:100000]
set title 'btrfs / ro / 2000'
plot 'btrfs/2000/ro/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/2000/ro/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/2000/ro/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/2000/ro/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/2000/ro/32/summary.data' using 1:4 with lines title 'p25'

set title 'btrfs-no-compress / ro / 2000'
plot 'btrfs-no-compress/2000/ro/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs-no-compress/2000/ro/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs-no-compress/2000/ro/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs-no-compress/2000/ro/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs-no-compress/2000/ro/32/summary.data' using 1:4 with lines title 'p25'


