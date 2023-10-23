set terminal svg size 600,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'tps-short-btrfs-no-compress.svg'

set title "tps-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst
set yrange [0:69091]
set title 'btrfs-no-compress / rw / 100'
plot 'btrfs-no-compress/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:46262]
set title 'btrfs-no-compress / rw / 1000'
plot 'btrfs-no-compress/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:39293]
set title 'btrfs-no-compress / rw / 10000'
plot 'btrfs-no-compress/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:386245]
set title 'btrfs-no-compress / ro / 10000'
plot 'btrfs-no-compress/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


