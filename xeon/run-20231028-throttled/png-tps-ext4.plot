set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'tps-ext4.eps'

set title "tps" font 'Helvetica,24'
set xrange [0:7200]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst

set yrange [0:102483]
set title 'ext4 / rw / 100'
plot 'ext4/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:79097]
set title 'ext4 / rw / 1000'
plot 'ext4/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:45761]
set title 'ext4 / rw / 10000'
plot 'ext4/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:323511]
set title 'ext4 / ro / 10000'
plot 'ext4/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


