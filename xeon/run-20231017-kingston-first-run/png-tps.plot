set terminal postscript eps size 35,10 enhanced color font 'Helvetica,12'
set output 'tps.eps'

set title "tps" font 'Helvetica,24'
set xrange [0:7200]
set yrange [0:]
set key off

set multiplot layout 4,7 rowsfirst

set yrange [0:100000]
set title 'btrfs / rw / 100'
plot 'btrfs/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'btrfs-no-compress / rw / 100'
plot 'btrfs-no-compress/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'ext4 / rw / 100'
plot 'ext4/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'xfs / rw / 100'
plot 'xfs/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs / rw / 100'
plot 'zfs/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-compress / rw / 100'
plot 'zfs-no-compress/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-fpw / rw / 100'
plot 'zfs-no-fpw/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:400000]

set yrange [0:100000]
set title 'btrfs / rw / 1000'
plot 'btrfs/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'btrfs-no-compress / rw / 1000'
plot 'btrfs-no-compress/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'ext4 / rw / 1000'
plot 'ext4/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'xfs / rw / 1000'
plot 'xfs/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs / rw / 1000'
plot 'zfs/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-compress / rw / 1000'
plot 'zfs-no-compress/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-fpw / rw / 1000'
plot 'zfs-no-fpw/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:400000]

set yrange [0:50000]
set title 'btrfs / rw / 10000'
plot 'btrfs/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'btrfs-no-compress / rw / 10000'
plot 'btrfs-no-compress/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'ext4 / rw / 10000'
plot 'ext4/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'xfs / rw / 10000'
plot 'xfs/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs / rw / 10000'
plot 'zfs/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-compress / rw / 10000'
plot 'zfs-no-compress/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-fpw / rw / 10000'
plot 'zfs-no-fpw/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:400000]
set title 'btrfs / ro / 10000'
plot 'btrfs/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'btrfs-no-compress / ro / 10000'
plot 'btrfs-no-compress/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'btrfs-no-compress/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'ext4 / ro / 10000'
plot 'ext4/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'xfs / ro / 10000'
plot 'xfs/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs / ro / 10000'
plot 'zfs/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-compress / ro / 10000'
plot 'zfs-no-compress/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-compress/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'zfs-no-fpw / ro / 10000'
plot 'zfs-no-fpw/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'zfs-no-fpw/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


