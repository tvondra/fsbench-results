set terminal svg size 600,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'tps-zfs-no-compress.svg'

set title "tps" font 'Helvetica,24'
set xrange [0:7200]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst

set yrange [0:21196]
set title 'zfs-no-compress / rw / 100'
plot 'zfs-no-compress/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:16236]
set title 'zfs-no-compress / rw / 500'
plot 'zfs-no-compress/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:10318]
set title 'zfs-no-compress / rw / 2000'
plot 'zfs-no-compress/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:57890]
set title 'zfs-no-compress / ro / 2000'
plot 'zfs-no-compress/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


