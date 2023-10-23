set terminal postscript eps size 5,10 enhanced color font 'Helvetica,12'
set output 'tps-short-ext4.eps'

set title "tps-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst
set yrange [0:127355]
set title 'ext4 / rw / 100'
plot 'ext4/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:113005]
set title 'ext4 / rw / 1000'
plot 'ext4/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:61473]
set title 'ext4 / rw / 10000'
plot 'ext4/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:430131]
set title 'ext4 / ro / 10000'
plot 'ext4/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


