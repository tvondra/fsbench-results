set terminal svg size 600,1200 enhanced background rgb 'white' font 'Helvetica,12'
set output 'latencies-btrfs.svg'

set title "latencies" font 'Helvetica,24'

set xrange [0:7200]
set yrange [0:]
set logscale y

set multiplot layout 4,1 rowsfirst
set yrange [100000000:1000000]

set yrange [100000000:100000]

set yrange [100000000:10000000]

set yrange [100000000:100000]

set yrange [100000000:100000000]

set yrange [100000000:100000]

