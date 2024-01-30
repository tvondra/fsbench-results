set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'tps.eps'

set title "tps" font 'Helvetica,24'
set xrange [0:7200]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst

set yrange [0:300000]
set title 'zfs / rw / 200'
plot 'zfs/200/rw/128/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/200/rw/128/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:500000]

set yrange [0:250000]
set title 'zfs / rw / 2000'
plot 'zfs/2000/rw/128/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/2000/rw/128/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:500000]

set yrange [0:25000]
set title 'zfs / rw / 20000'
plot 'zfs/20000/rw/128/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/20000/rw/128/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:500000]
set title 'zfs / ro / 20000'
plot 'zfs/20000/ro/128/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/20000/ro/128/tps.data' using 1:4 with lines lc rgb '#cc0000'


