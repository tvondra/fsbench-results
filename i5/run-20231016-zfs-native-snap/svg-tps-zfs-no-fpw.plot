set terminal svg size 600,1200 font 'Helvetica,12'
set output 'tps-zfs-no-fpw.svg'

set title "tps" font 'Helvetica,24'
set xrange [0:7200]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst

set yrange [0:21907]
set title 'zfs-no-fpw / rw / 100'
plot 'zfs-no-fpw/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:16480]
set title 'zfs-no-fpw / rw / 500'
plot 'zfs-no-fpw/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:15023]
set title 'zfs-no-fpw / rw / 2000'
plot 'zfs-no-fpw/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:65615]
set title 'zfs-no-fpw / ro / 2000'
plot 'zfs-no-fpw/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


