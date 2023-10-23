set terminal svg size 600,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'tps-xfs.svg'

set title "tps" font 'Helvetica,24'
set xrange [0:7200]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst

set yrange [0:105983]
set title 'xfs / rw / 100'
plot 'xfs/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:95141]
set title 'xfs / rw / 1000'
plot 'xfs/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:49235]
set title 'xfs / rw / 10000'
plot 'xfs/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:374109]
set title 'xfs / ro / 10000'
plot 'xfs/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


