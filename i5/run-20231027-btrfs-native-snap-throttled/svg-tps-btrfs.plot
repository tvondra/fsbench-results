set terminal svg size 600,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'tps-btrfs.svg'

set title "tps" font 'Helvetica,24'
set xrange [0:7200]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst

set yrange [0:14822]
set title 'btrfs / rw / 100'
plot 'btrfs/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:14616]
set title 'btrfs / rw / 500'
plot 'btrfs/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:12312]
set title 'btrfs / rw / 2000'
plot 'btrfs/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:79598]
set title 'btrfs / ro / 2000'
plot 'btrfs/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


