set terminal svg size 1800,1200 font 'Helvetica,12'
set output 'tps.svg'

set title "tps" font 'Helvetica,24'
set xrange [0:7200]
set yrange [0:]
set key off

set multiplot layout 4,3 rowsfirst

set yrange [0:100902]
set title 'zfs / rw / 100'
plot 'zfs/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-compress / rw / 100'
plot 'zfs-no-compress/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-fpw / rw / 100'
plot 'zfs-no-fpw/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:70526]
set title 'zfs / rw / 1000'
plot 'zfs/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-compress / rw / 1000'
plot 'zfs-no-compress/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-fpw / rw / 1000'
plot 'zfs-no-fpw/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:56871]
set title 'zfs / rw / 10000'
plot 'zfs/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-compress / rw / 10000'
plot 'zfs-no-compress/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-fpw / rw / 10000'
plot 'zfs-no-fpw/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:180717]
set title 'zfs / ro / 10000'
plot 'zfs/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-compress / ro / 10000'
plot 'zfs-no-compress/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-fpw / ro / 10000'
plot 'zfs-no-fpw/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


