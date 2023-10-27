set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'tps-short-xfs.eps'

set title "tps-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst
set yrange [0:21377]
set title 'xfs / rw / 100'
plot 'xfs/100/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/100/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:18987]
set title 'xfs / rw / 500'
plot 'xfs/500/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/500/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:12422]
set title 'xfs / rw / 2000'
plot 'xfs/2000/rw/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/2000/rw/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:93291]
set title 'xfs / ro / 2000'
plot 'xfs/2000/ro/32/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/2000/ro/32/tps.data' using 1:4 with lines lc rgb '#cc0000'


