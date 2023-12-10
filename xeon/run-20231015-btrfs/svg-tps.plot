set terminal svg size 1200,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'tps.svg'

set title "tps" font 'Helvetica,24'
set xrange [0:7200]
set yrange [0:]
set key off

set multiplot layout 4,2 rowsfirst

set yrange [0:100000]
set title 'btrfs / rw / 100'
plot 'btrfs/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'btrfs-no-compress / rw / 100'
plot 'btrfs-no-compress/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:400000]

set yrange [0:100000]
set title 'btrfs / rw / 1000'
plot 'btrfs/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'btrfs-no-compress / rw / 1000'
plot 'btrfs-no-compress/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:400000]

set yrange [0:50000]
set title 'btrfs / rw / 10000'
plot 'btrfs/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'btrfs-no-compress / rw / 10000'
plot 'btrfs-no-compress/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:400000]
set title 'btrfs / ro / 10000'
plot 'btrfs/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'btrfs-no-compress / ro / 10000'
plot 'btrfs-no-compress/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


