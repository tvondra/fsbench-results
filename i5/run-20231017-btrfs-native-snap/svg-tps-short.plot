set terminal svg size 1200,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'tps-short.svg'

set title "tps-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set key off

set multiplot layout 4,2 rowsfirst
set yrange [0:18386]
set title 'btrfs / rw / 100'
plot 'btrfs/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'btrfs-no-compress / rw / 100'
plot 'btrfs-no-compress/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:16225]
set title 'btrfs / rw / 500'
plot 'btrfs/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'btrfs-no-compress / rw / 500'
plot 'btrfs-no-compress/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:16004]
set title 'btrfs / rw / 2000'
plot 'btrfs/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'btrfs-no-compress / rw / 2000'
plot 'btrfs-no-compress/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:88470]
set title 'btrfs / ro / 2000'
plot 'btrfs/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'btrfs-no-compress / ro / 2000'
plot 'btrfs-no-compress/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


