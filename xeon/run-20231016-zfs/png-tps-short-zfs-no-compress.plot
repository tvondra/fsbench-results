set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'tps-short-zfs-no-compress.eps'

set title "tps-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst
set yrange [0:94539]
set title 'zfs-no-compress / rw / 100'
plot 'zfs-no-compress/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:54892]
set title 'zfs-no-compress / rw / 1000'
plot 'zfs-no-compress/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:32099]
set title 'zfs-no-compress / rw / 10000'
plot 'zfs-no-compress/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:117374]
set title 'zfs-no-compress / ro / 10000'
plot 'zfs-no-compress/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


