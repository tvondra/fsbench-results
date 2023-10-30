set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'tps-zfs.eps'

set title "tps" font 'Helvetica,24'
set xrange [0:7200]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst

set yrange [0:19218]
set title 'zfs / rw / 100'
plot 'zfs/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:13073]
set title 'zfs / rw / 500'
plot 'zfs/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:6503]
set title 'zfs / rw / 2000'
plot 'zfs/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:63058]
set title 'zfs / ro / 2000'
plot 'zfs/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


