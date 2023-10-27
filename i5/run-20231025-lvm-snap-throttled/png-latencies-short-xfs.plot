set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'latencies-short-xfs.eps'

set title "latencies-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set logscale y

set multiplot layout 4,1 rowsfirst
set yrange [100:10000000]
set title 'xfs / rw / 100'
plot 'xfs/100/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'xfs/100/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'xfs/100/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'xfs/100/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'xfs/100/rw/32/summary.data' using 1:4 with lines title 'p25'



set yrange [100:10000000]
set title 'xfs / rw / 500'
plot 'xfs/500/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'xfs/500/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'xfs/500/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'xfs/500/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'xfs/500/rw/32/summary.data' using 1:4 with lines title 'p25'



set yrange [10000:1000000000]
set title 'xfs / rw / 2000'
plot 'xfs/2000/rw/32/summary.data' using 1:8 with lines title 'p99', \
     'xfs/2000/rw/32/summary.data' using 1:7 with lines title 'p95', \
     'xfs/2000/rw/32/summary.data' using 1:6 with lines title 'p75', \
     'xfs/2000/rw/32/summary.data' using 1:5 with lines title 'p50', \
     'xfs/2000/rw/32/summary.data' using 1:4 with lines title 'p25'


set yrange [100:1000000]
set title 'xfs / ro / 2000'
plot 'xfs/2000/ro/32/summary.data' using 1:8 with lines title 'p99', \
     'xfs/2000/ro/32/summary.data' using 1:7 with lines title 'p95', \
     'xfs/2000/ro/32/summary.data' using 1:6 with lines title 'p75', \
     'xfs/2000/ro/32/summary.data' using 1:5 with lines title 'p50', \
     'xfs/2000/ro/32/summary.data' using 1:4 with lines title 'p25'


