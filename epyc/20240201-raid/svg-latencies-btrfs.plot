set terminal svg size 600,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'latencies-btrfs.svg'

set title "latencies" font 'Helvetica,24'

set xrange [0:7200]
set yrange [0:]
set logscale y

set multiplot layout 4,1 rowsfirst
set yrange [100:1000000]
set title 'btrfs / rw / 200'
plot 'btrfs/200/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/200/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/200/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/200/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/200/rw/128/summary.data' using 1:4 with lines title 'p25'


set yrange [100000000:100000]

set yrange [100:10000000]
set title 'btrfs / rw / 2000'
plot 'btrfs/2000/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/2000/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/2000/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/2000/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/2000/rw/128/summary.data' using 1:4 with lines title 'p25'


set yrange [100000000:100000]

set yrange [100:100000000]
set title 'btrfs / rw / 20000'
plot 'btrfs/20000/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/20000/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/20000/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/20000/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/20000/rw/128/summary.data' using 1:4 with lines title 'p25'


set yrange [100:100000]
set title 'btrfs / ro / 20000'
plot 'btrfs/20000/ro/128/summary.data' using 1:8 with lines title 'p99', \
     'btrfs/20000/ro/128/summary.data' using 1:7 with lines title 'p95', \
     'btrfs/20000/ro/128/summary.data' using 1:6 with lines title 'p75', \
     'btrfs/20000/ro/128/summary.data' using 1:5 with lines title 'p50', \
     'btrfs/20000/ro/128/summary.data' using 1:4 with lines title 'p25'


