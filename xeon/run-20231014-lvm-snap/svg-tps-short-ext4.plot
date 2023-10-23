set terminal svg size 600,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'tps-short-ext4.svg'

set title "tps-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set key off

set multiplot layout 4,1 rowsfirst
set yrange [0:91812]
set title 'ext4 / rw / 100'
plot 'ext4/100/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/100/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:53736]
set title 'ext4 / rw / 1000'
plot 'ext4/1000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/1000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'



set yrange [0:8941]
set title 'ext4 / rw / 10000'
plot 'ext4/10000/rw/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/10000/rw/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:358011]
set title 'ext4 / ro / 10000'
plot 'ext4/10000/ro/64/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/10000/ro/64/tps.data' using 1:4 with lines lc rgb '#cc0000'


