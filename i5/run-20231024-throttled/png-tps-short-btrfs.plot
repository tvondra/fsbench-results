set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'tps-short-btrfs.eps'

set title "tps-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst
set yrange [0:16155]
set title 'btrfs / rw / 100'
plot 'btrfs/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:13482]
set title 'btrfs / rw / 500'
plot 'btrfs/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:11564]
set title 'btrfs / rw / 2000'
plot 'btrfs/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:78594]
set title 'btrfs / ro / 2000'
plot 'btrfs/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


