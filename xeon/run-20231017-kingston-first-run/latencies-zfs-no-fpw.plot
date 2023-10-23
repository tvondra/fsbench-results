set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'latencies-zfs-no-fpw.eps'

set title "latencies" font 'Helvetica,24'

set xrange [0:7200]
set yrange [0:]
set logscale y

set multiplot layout 4,1 rowsfirst
set yrange [100:100000]
set title 'zfs-no-fpw / rw / 100'
plot 'zfs-no-fpw/100/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-fpw/100/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-fpw/100/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-fpw/100/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-fpw/100/rw/64/summary.data' using 1:4 with lines title 'p25'



set yrange [100:100000]
set title 'zfs-no-fpw / rw / 1000'
plot 'zfs-no-fpw/1000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-fpw/1000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-fpw/1000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-fpw/1000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-fpw/1000/rw/64/summary.data' using 1:4 with lines title 'p25'



set yrange [100:1000000]
set title 'zfs-no-fpw / rw / 10000'
plot 'zfs-no-fpw/10000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-fpw/10000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-fpw/10000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-fpw/10000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-fpw/10000/rw/64/summary.data' using 1:4 with lines title 'p25'


set yrange [100:100000]
set title 'zfs-no-fpw / ro / 10000'
plot 'zfs-no-fpw/10000/ro/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-fpw/10000/ro/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-fpw/10000/ro/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-fpw/10000/ro/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-fpw/10000/ro/64/summary.data' using 1:4 with lines title 'p25'


