set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'tps-short-btrfs-no-compress.eps'

set title "tps-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst
set yrange [0:80386]
set title 'btrfs-no-compress / rw / 100'
plot 'btrfs-no-compress/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:42689]
set title 'btrfs-no-compress / rw / 1000'
plot 'btrfs-no-compress/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:37118]
set title 'btrfs-no-compress / rw / 10000'
plot 'btrfs-no-compress/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:344263]
set title 'btrfs-no-compress / ro / 10000'
plot 'btrfs-no-compress/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


