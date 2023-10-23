set terminal svg size 1800,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'latencies.svg'

set title "latencies" font 'Helvetica,24'

set xrange [0:7200]
set yrange [0:]
set logscale y

set multiplot layout 4,3 rowsfirst
set yrange [100:1000000]
set title 'zfs / rw / 100'
plot 'zfs/100/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs/100/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs/100/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs/100/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs/100/rw/64/summary.data' using 1:4 with lines title 'p25'

set title 'zfs-no-compress / rw / 100'
plot 'zfs-no-compress/100/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-compress/100/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-compress/100/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-compress/100/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-compress/100/rw/64/summary.data' using 1:4 with lines title 'p25'

set title 'zfs-no-fpw / rw / 100'
plot 'zfs-no-fpw/100/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-fpw/100/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-fpw/100/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-fpw/100/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-fpw/100/rw/64/summary.data' using 1:4 with lines title 'p25'



set yrange [100:1000000]
set title 'zfs / rw / 1000'
plot 'zfs/1000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs/1000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs/1000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs/1000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs/1000/rw/64/summary.data' using 1:4 with lines title 'p25'

set title 'zfs-no-compress / rw / 1000'
plot 'zfs-no-compress/1000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-compress/1000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-compress/1000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-compress/1000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-compress/1000/rw/64/summary.data' using 1:4 with lines title 'p25'

set title 'zfs-no-fpw / rw / 1000'
plot 'zfs-no-fpw/1000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-fpw/1000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-fpw/1000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-fpw/1000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-fpw/1000/rw/64/summary.data' using 1:4 with lines title 'p25'



set yrange [1000:10000000]
set title 'zfs / rw / 10000'
plot 'zfs/10000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs/10000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs/10000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs/10000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs/10000/rw/64/summary.data' using 1:4 with lines title 'p25'

set title 'zfs-no-compress / rw / 10000'
plot 'zfs-no-compress/10000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-compress/10000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-compress/10000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-compress/10000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-compress/10000/rw/64/summary.data' using 1:4 with lines title 'p25'

set title 'zfs-no-fpw / rw / 10000'
plot 'zfs-no-fpw/10000/rw/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-fpw/10000/rw/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-fpw/10000/rw/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-fpw/10000/rw/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-fpw/10000/rw/64/summary.data' using 1:4 with lines title 'p25'


set yrange [100:100000]
set title 'zfs / ro / 10000'
plot 'zfs/10000/ro/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs/10000/ro/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs/10000/ro/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs/10000/ro/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs/10000/ro/64/summary.data' using 1:4 with lines title 'p25'

set title 'zfs-no-compress / ro / 10000'
plot 'zfs-no-compress/10000/ro/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-compress/10000/ro/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-compress/10000/ro/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-compress/10000/ro/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-compress/10000/ro/64/summary.data' using 1:4 with lines title 'p25'

set title 'zfs-no-fpw / ro / 10000'
plot 'zfs-no-fpw/10000/ro/64/summary.data' using 1:8 with lines title 'p99', \
     'zfs-no-fpw/10000/ro/64/summary.data' using 1:7 with lines title 'p95', \
     'zfs-no-fpw/10000/ro/64/summary.data' using 1:6 with lines title 'p75', \
     'zfs-no-fpw/10000/ro/64/summary.data' using 1:5 with lines title 'p50', \
     'zfs-no-fpw/10000/ro/64/summary.data' using 1:4 with lines title 'p25'


