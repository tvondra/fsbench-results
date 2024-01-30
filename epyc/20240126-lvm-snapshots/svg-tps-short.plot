set terminal svg size 1800,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'tps-short.svg'

set title "tps-short" font 'Helvetica,24'

set xrange [0:300]
set yrange [0:]
set key off

set multiplot layout 4,3 rowsfirst
set yrange [0:300000]
set title 'ext4 / rw / 200'
plot 'ext4/200/rw/128/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/200/rw/128/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'xfs / rw / 200'
plot 'xfs/200/rw/128/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/200/rw/128/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:500000]

set yrange [0:250000]
set title 'ext4 / rw / 2000'
plot 'ext4/2000/rw/128/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/2000/rw/128/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'xfs / rw / 2000'
plot 'xfs/2000/rw/128/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/2000/rw/128/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:500000]

set yrange [0:25000]
set title 'ext4 / rw / 20000'
plot 'ext4/20000/rw/128/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/20000/rw/128/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'xfs / rw / 20000'
plot 'xfs/20000/rw/128/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/20000/rw/128/tps.data' using 1:4 with lines lc rgb '#cc0000'


set yrange [0:500000]
set title 'ext4 / ro / 20000'
plot 'ext4/20000/ro/128/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'ext4/20000/ro/128/tps.data' using 1:4 with lines lc rgb '#cc0000'

set title 'xfs / ro / 20000'
plot 'xfs/20000/ro/128/tps.data' using 1:3 with lines lc rgb '#cccccc', \
     'xfs/20000/ro/128/tps.data' using 1:4 with lines lc rgb '#cc0000'


