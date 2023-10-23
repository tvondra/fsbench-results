set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'tps-short-zfs-no-fpw.eps'

set title "tps-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst
set yrange [0:22128]
set title 'zfs-no-fpw / rw / 100'
plot 'zfs-no-fpw/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:19406]
set title 'zfs-no-fpw / rw / 500'
plot 'zfs-no-fpw/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:12601]
set title 'zfs-no-fpw / rw / 2000'
plot 'zfs-no-fpw/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:63047]
set title 'zfs-no-fpw / ro / 2000'
plot 'zfs-no-fpw/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


