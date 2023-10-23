set terminal svg size 600,1200 font 'Helvetica,12'
set output 'latencies-short-zfs-no-compress.svg'

set title "latencies-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set logscale y

set multiplot layout 4,1 rowsfirst
set yrange [100:100000]
set title 'zfs-no-compress / rw / 100'
plot 'zfs-no-compress/100/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-compress/100/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-compress/100/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-compress/100/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-compress/100/rw/64/summary.data' using 1:4 with lines title 'p25'



set yrange [100:100000]
set title 'zfs-no-compress / rw / 1000'
plot 'zfs-no-compress/1000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-compress/1000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-compress/1000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-compress/1000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-compress/1000/rw/64/summary.data' using 1:4 with lines title 'p25'



set yrange [1000:1000000]
set title 'zfs-no-compress / rw / 10000'
plot 'zfs-no-compress/10000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-compress/10000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-compress/10000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-compress/10000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-compress/10000/rw/64/summary.data' using 1:4 with lines title 'p25'


set yrange [100:10000]
set title 'zfs-no-compress / ro / 10000'
plot 'zfs-no-compress/10000/ro/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-compress/10000/ro/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-compress/10000/ro/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-compress/10000/ro/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-compress/10000/ro/64/summary.data' using 1:4 with lines title 'p25'


