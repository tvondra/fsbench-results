set terminal svg size 600,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'latencies-short-btrfs-no-compress.svg'

set title "latencies-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set logscale y

set multiplot layout 4,1 rowsfirst
set yrange [1000:100000]
set title 'btrfs-no-compress / rw / 100'
plot 'btrfs-no-compress/100/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs-no-compress/100/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs-no-compress/100/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs-no-compress/100/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs-no-compress/100/rw/32/summary.data' using 1:4 with lines title 'p25'



set yrange [1000:10000000]
set title 'btrfs-no-compress / rw / 500'
plot 'btrfs-no-compress/500/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs-no-compress/500/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs-no-compress/500/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs-no-compress/500/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs-no-compress/500/rw/32/summary.data' using 1:4 with lines title 'p25'



set yrange [1000:10000000]
set title 'btrfs-no-compress / rw / 2000'
plot 'btrfs-no-compress/2000/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs-no-compress/2000/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs-no-compress/2000/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs-no-compress/2000/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs-no-compress/2000/rw/32/summary.data' using 1:4 with lines title 'p25'


set yrange [100:10000]
set title 'btrfs-no-compress / ro / 2000'
plot 'btrfs-no-compress/2000/ro/32/summary.data' using 1:8 with lines title 'p99', \
     'btrfs-no-compress/2000/ro/32/summary.data' using 1:7 with lines title 'p95', \
     'btrfs-no-compress/2000/ro/32/summary.data' using 1:6 with lines title 'p75', \
     'btrfs-no-compress/2000/ro/32/summary.data' using 1:5 with lines title 'p50', \
     'btrfs-no-compress/2000/ro/32/summary.data' using 1:4 with lines title 'p25'


