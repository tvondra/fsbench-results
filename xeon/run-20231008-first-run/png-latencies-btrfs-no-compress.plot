set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'latencies-btrfs-no-compress.eps'

set title "latencies" font 'Helvetica,24'

set xrange [0:7200]
set yrange [0:]
set logscale y

set multiplot layout 4,1 rowsfirst
set yrange [1000:10000000]
set title 'btrfs-no-compress / rw / 100'
plot 'btrfs-no-compress/100/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'btrfs-no-compress/100/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'btrfs-no-compress/100/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'btrfs-no-compress/100/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'btrfs-no-compress/100/rw/64/summary.data' using 1:4 with lines title 'p25'


set yrange [100000000:100000]

set yrange [1000:100000000]
set title 'btrfs-no-compress / rw / 1000'
plot 'btrfs-no-compress/1000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'btrfs-no-compress/1000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'btrfs-no-compress/1000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'btrfs-no-compress/1000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'btrfs-no-compress/1000/rw/64/summary.data' using 1:4 with lines title 'p25'


set yrange [100000000:100000]

set yrange [1000:1000000000]
set title 'btrfs-no-compress / rw / 10000'
plot 'btrfs-no-compress/10000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'btrfs-no-compress/10000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'btrfs-no-compress/10000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'btrfs-no-compress/10000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'btrfs-no-compress/10000/rw/64/summary.data' using 1:4 with lines title 'p25'


set yrange [100:100000]
set title 'btrfs-no-compress / ro / 10000'
plot 'btrfs-no-compress/10000/ro/64/summary.data' using 1:8 with lines title 'p99', \
     'btrfs-no-compress/10000/ro/64/summary.data' using 1:7 with lines title 'p95', \
     'btrfs-no-compress/10000/ro/64/summary.data' using 1:6 with lines title 'p75', \
     'btrfs-no-compress/10000/ro/64/summary.data' using 1:5 with lines title 'p50', \
     'btrfs-no-compress/10000/ro/64/summary.data' using 1:4 with lines title 'p25'


