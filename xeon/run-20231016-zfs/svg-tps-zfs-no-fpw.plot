set terminal svg size 600,1200 font 'Helvetica,12'
set output 'tps-zfs-no-fpw.svg'

set title "tps" font 'Helvetica,24'
set xrange [0:7200]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst

set yrange [0:100902]
set title 'zfs-no-fpw / rw / 100'
plot 'zfs-no-fpw/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:70526]
set title 'zfs-no-fpw / rw / 1000'
plot 'zfs-no-fpw/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:56871]
set title 'zfs-no-fpw / rw / 10000'
plot 'zfs-no-fpw/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:175976]
set title 'zfs-no-fpw / ro / 10000'
plot 'zfs-no-fpw/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


