set terminal svg size 1800,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'tps.svg'

set title "tps" font 'Helvetica,24'
set xrange [0:7200]
set yrange [0:]
set key off

set multiplot layout 4,3 rowsfirst

set yrange [0:21907]
set title 'zfs / rw / 100'
plot 'zfs/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-compress / rw / 100'
plot 'zfs-no-compress/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-fpw / rw / 100'
plot 'zfs-no-fpw/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:16480]
set title 'zfs / rw / 500'
plot 'zfs/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-compress / rw / 500'
plot 'zfs-no-compress/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-fpw / rw / 500'
plot 'zfs-no-fpw/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:15023]
set title 'zfs / rw / 2000'
plot 'zfs/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-compress / rw / 2000'
plot 'zfs-no-compress/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-fpw / rw / 2000'
plot 'zfs-no-fpw/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:65615]
set title 'zfs / ro / 2000'
plot 'zfs/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-compress / ro / 2000'
plot 'zfs-no-compress/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-fpw / ro / 2000'
plot 'zfs-no-fpw/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


