set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'latencies-short-xfs.eps'

set title "latencies-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set logscale y

set multiplot layout 4,1 rowsfirst
set yrange [1000:1000000]
set title 'xfs / rw / 200'
plot 'xfs/200/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'xfs/200/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'xfs/200/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'xfs/200/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'xfs/200/rw/128/summary.data' using 1:4 with lines title 'p25'


set yrange [100000000:100000]

set yrange [1000:10000000]
set title 'xfs / rw / 2000'
plot 'xfs/2000/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'xfs/2000/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'xfs/2000/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'xfs/2000/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'xfs/2000/rw/128/summary.data' using 1:4 with lines title 'p25'


set yrange [100000000:100000]

set yrange [1000:100000000]
set title 'xfs / rw / 20000'
plot 'xfs/20000/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'xfs/20000/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'xfs/20000/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'xfs/20000/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'xfs/20000/rw/128/summary.data' using 1:4 with lines title 'p25'


set yrange [100:100000]
set title 'xfs / ro / 20000'
plot 'xfs/20000/ro/128/summary.data' using 1:8 with lines title 'p99', \
     'xfs/20000/ro/128/summary.data' using 1:7 with lines title 'p95', \
     'xfs/20000/ro/128/summary.data' using 1:6 with lines title 'p75', \
     'xfs/20000/ro/128/summary.data' using 1:5 with lines title 'p50', \
     'xfs/20000/ro/128/summary.data' using 1:4 with lines title 'p25'


