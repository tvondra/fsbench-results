set terminal svg size 600,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'tps-short-btrfs.svg'

set title "tps-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst
set yrange [0:42287]
set title 'btrfs / rw / 100'
plot 'btrfs/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:20832]
set title 'btrfs / rw / 1000'
plot 'btrfs/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:6099]
set title 'btrfs / rw / 10000'
plot 'btrfs/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:216260]
set title 'btrfs / ro / 10000'
plot 'btrfs/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


