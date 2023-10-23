set terminal svg size 600,1200 font 'Helvetica,12'
set output 'tps-btrfs-no-compress.svg'

set title "tps" font 'Helvetica,24'
set xrange [0:7200]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst

set yrange [0:16462]
set title 'btrfs-no-compress / rw / 100'
plot 'btrfs-no-compress/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:15928]
set title 'btrfs-no-compress / rw / 500'
plot 'btrfs-no-compress/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:15340]
set title 'btrfs-no-compress / rw / 2000'
plot 'btrfs-no-compress/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:86763]
set title 'btrfs-no-compress / ro / 2000'
plot 'btrfs-no-compress/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


