set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'tps.eps'

set title "tps" font 'Helvetica,24'
set xrange [0:7200]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst

set yrange [0:100000]
set title 'zfs / rw / 100'
plot 'zfs/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:400000]

set yrange [0:100000]
set title 'zfs / rw / 1000'
plot 'zfs/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:400000]

set yrange [0:50000]
set title 'zfs / rw / 10000'
plot 'zfs/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:400000]
set title 'zfs / ro / 10000'
plot 'zfs/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


