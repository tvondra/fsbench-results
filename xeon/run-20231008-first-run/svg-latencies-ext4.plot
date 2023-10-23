set terminal svg size 600,1200 font 'Helvetica,12'
set output 'latencies-ext4.svg'

set title "latencies" font 'Helvetica,24'

set xrange [0:7200]
set yrange [0:]
set logscale y

set multiplot layout 4,1 rowsfirst
set yrange [100:100000]
set title 'ext4 / rw / 100'
plot 'ext4/100/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'ext4/100/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'ext4/100/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'ext4/100/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'ext4/100/rw/64/summary.data' using 1:4 with lines title 'p25'



set yrange [100:1000000]
set title 'ext4 / rw / 1000'
plot 'ext4/1000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'ext4/1000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'ext4/1000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'ext4/1000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'ext4/1000/rw/64/summary.data' using 1:4 with lines title 'p25'



set yrange [1000:1000000]
set title 'ext4 / rw / 10000'
plot 'ext4/10000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'ext4/10000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'ext4/10000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'ext4/10000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'ext4/10000/rw/64/summary.data' using 1:4 with lines title 'p25'


set yrange [100:10000]
set title 'ext4 / ro / 10000'
plot 'ext4/10000/ro/64/summary.data' using 1:8 with lines title 'p99', \
     'ext4/10000/ro/64/summary.data' using 1:7 with lines title 'p95', \
     'ext4/10000/ro/64/summary.data' using 1:6 with lines title 'p75', \
     'ext4/10000/ro/64/summary.data' using 1:5 with lines title 'p50', \
     'ext4/10000/ro/64/summary.data' using 1:4 with lines title 'p25'


