set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'tps-short-btrfs-no-compress.eps'

set title "tps-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst
set yrange [0:18832]
set title 'btrfs-no-compress / rw / 100'
plot 'btrfs-no-compress/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:15907]
set title 'btrfs-no-compress / rw / 500'
plot 'btrfs-no-compress/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:14634]
set title 'btrfs-no-compress / rw / 2000'
plot 'btrfs-no-compress/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:85071]
set title 'btrfs-no-compress / ro / 2000'
plot 'btrfs-no-compress/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


