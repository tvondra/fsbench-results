set terminal postscript eps size 10,10 enhanced color font 'Helvetica,12'
set output 'tps-short.eps'

set title "tps-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set key off

set multiplot layout 4,2 rowsfirst
set yrange [0:25639]
set title 'ext4 / rw / 100'
plot 'ext4/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'xfs / rw / 100'
plot 'xfs/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:21710]
set title 'ext4 / rw / 500'
plot 'ext4/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'xfs / rw / 500'
plot 'xfs/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:18495]
set title 'ext4 / rw / 2000'
plot 'ext4/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'xfs / rw / 2000'
plot 'xfs/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:99101]
set title 'ext4 / ro / 2000'
plot 'ext4/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'xfs / ro / 2000'
plot 'xfs/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


