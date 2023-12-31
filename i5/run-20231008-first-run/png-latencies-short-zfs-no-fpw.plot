set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'latencies-short-zfs-no-fpw.eps'

set title "latencies-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set logscale y

set multiplot layout 4,1 rowsfirst
set yrange [1000:10000000]
set title 'zfs-no-fpw / rw / 100'
plot 'zfs-no-fpw/100/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-fpw/100/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-fpw/100/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-fpw/100/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-fpw/100/rw/32/summary.data' using 1:4 with lines title 'p25'


set yrange [100000000:100000]

set yrange [1000:100000000]
set title 'zfs-no-fpw / rw / 500'
plot 'zfs-no-fpw/500/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-fpw/500/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-fpw/500/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-fpw/500/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-fpw/500/rw/32/summary.data' using 1:4 with lines title 'p25'


set yrange [100000000:100000]

set yrange [1000:100000000]
set title 'zfs-no-fpw / rw / 2000'
plot 'zfs-no-fpw/2000/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-fpw/2000/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-fpw/2000/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-fpw/2000/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-fpw/2000/rw/32/summary.data' using 1:4 with lines title 'p25'


set yrange [100:100000]
set title 'zfs-no-fpw / ro / 2000'
plot 'zfs-no-fpw/2000/ro/32/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-fpw/2000/ro/32/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-fpw/2000/ro/32/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-fpw/2000/ro/32/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-fpw/2000/ro/32/summary.data' using 1:4 with lines title 'p25'


