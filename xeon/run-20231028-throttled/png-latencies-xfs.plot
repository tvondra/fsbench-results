set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'latencies-xfs.eps'

set title "latencies" font 'Helvetica,24'

set xrange [0:7200]
set yrange [0:]
set logscale y

set multiplot layout 4,1 rowsfirst
set yrange [100:10000000]
set title 'xfs / rw / 100'
plot 'xfs/100/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'xfs/100/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'xfs/100/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'xfs/100/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'xfs/100/rw/64/summary.data' using 1:4 with lines title 'p25'



set yrange [100:10000000]
set title 'xfs / rw / 1000'
plot 'xfs/1000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'xfs/1000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'xfs/1000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'xfs/1000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'xfs/1000/rw/64/summary.data' using 1:4 with lines title 'p25'



set yrange [100:100000000]
set title 'xfs / rw / 10000'
plot 'xfs/10000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'xfs/10000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'xfs/10000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'xfs/10000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'xfs/10000/rw/64/summary.data' using 1:4 with lines title 'p25'


set yrange [100:10000000]
set title 'xfs / ro / 10000'
plot 'xfs/10000/ro/64/summary.data' using 1:8 with lines title 'p99', \
     'xfs/10000/ro/64/summary.data' using 1:7 with lines title 'p95', \
     'xfs/10000/ro/64/summary.data' using 1:6 with lines title 'p75', \
     'xfs/10000/ro/64/summary.data' using 1:5 with lines title 'p50', \
     'xfs/10000/ro/64/summary.data' using 1:4 with lines title 'p25'


