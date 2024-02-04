set terminal svg size 600,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'latencies-short-ext4.svg'

set title "latencies-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set logscale y

set multiplot layout 4,1 rowsfirst
set yrange [1000:1000000]
set title 'ext4 / rw / 200'
plot 'ext4/200/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'ext4/200/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'ext4/200/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'ext4/200/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'ext4/200/rw/128/summary.data' using 1:4 with lines title 'p25'


set yrange [100000000:100000]

set yrange [1000:10000000]
set title 'ext4 / rw / 2000'
plot 'ext4/2000/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'ext4/2000/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'ext4/2000/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'ext4/2000/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'ext4/2000/rw/128/summary.data' using 1:4 with lines title 'p25'


set yrange [100000000:100000]

set yrange [10000:100000000]
set title 'ext4 / rw / 20000'
plot 'ext4/20000/rw/128/summary.data' using 1:8 with lines title 'p99', \
     'ext4/20000/rw/128/summary.data' using 1:7 with lines title 'p95', \
     'ext4/20000/rw/128/summary.data' using 1:6 with lines title 'p75', \
     'ext4/20000/rw/128/summary.data' using 1:5 with lines title 'p50', \
     'ext4/20000/rw/128/summary.data' using 1:4 with lines title 'p25'


set yrange [100:100000]
set title 'ext4 / ro / 20000'
plot 'ext4/20000/ro/128/summary.data' using 1:8 with lines title 'p99', \
     'ext4/20000/ro/128/summary.data' using 1:7 with lines title 'p95', \
     'ext4/20000/ro/128/summary.data' using 1:6 with lines title 'p75', \
     'ext4/20000/ro/128/summary.data' using 1:5 with lines title 'p50', \
     'ext4/20000/ro/128/summary.data' using 1:4 with lines title 'p25'

