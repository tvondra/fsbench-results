set terminal svg size 600,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'latencies-short.svg'

set title "latencies-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set logscale y

set multiplot layout 4,1 rowsfirst
set yrange [1000:100000000]
set title 'btrfs / rw / 100'
plot 'btrfs/100/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/100/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/100/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/100/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/100/rw/32/summary.data' using 1:4 with lines title 'p25'



set yrange [1000:100000000]
set title 'btrfs / rw / 500'
plot 'btrfs/500/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/500/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/500/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/500/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/500/rw/32/summary.data' using 1:4 with lines title 'p25'



set yrange [1000:1000000000]
set title 'btrfs / rw / 2000'
plot 'btrfs/2000/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/2000/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/2000/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/2000/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/2000/rw/32/summary.data' using 1:4 with lines title 'p25'


set yrange [100:10000000]
set title 'btrfs / ro / 2000'
plot 'btrfs/2000/ro/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/2000/ro/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/2000/ro/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/2000/ro/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/2000/ro/32/summary.data' using 1:4 with lines title 'p25'


