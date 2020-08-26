#set terminal postscript eps enhanced color solid font "16" 50 size 18,11
set terminal pdf enhanced font "16, 45" size 35,14
set output "PARSEC-scalability-strong.pdf"

set lmargin 4.9
set rmargin 1.4
set tmargin 2
set bmargin 3

set style data linespoints

set xtics offset 0,0
#set xtics 0.5 offset 0,graph 0.01
set xlabel "Number of Threads" offset 0,0.5
#set xtics right offset 8,0,0
#set boxwidth 0.8 relative
#set xtics nomirror out 
#set xtics scale 0

set ytics
set ylabel "Speedup" offset 1.5,0
#offset character 1.7,0,0
#set grid 
#set ytics 0, 0.5, 5

#set key bottom right
#unset key
#set key horizontal maxrows 5 at 14,22
#set key box lt rgb "black" lw 4 dt 2
#set key Left
#set key reverse
#set key at 22,115 top right horizontal
#set key outside right top vertical

set style line 1 ps 2 lw 4 lt rgb "red"
set style line 2 ps 2 lw 4 lt rgb "orange"
set style line 3 ps 2 lw 4 lt rgb "brown"
set style line 4 ps 2 lw 4 lt rgb "green"
set style line 5 ps 2 lw 4 lt rgb "#4B0082"
set style line 6 ps 2 lw 4 lt rgb "cyan"
set style line 8 ps 2 lw 4 lt rgb "blue"
set style line 10 ps 2 lw 4 lt rgb "coral"
set style line 12 ps 2 lw 4 lt rgb "violet"

#set style line 1 ps 2 lw 2 lt rgb "black"
#set style line 2 ps 2 lw 2 lt rgb "black"
#set style line 3 ps 2 lw 2 lt rgb "black"
#set style line 4 ps 2 lw 2 lt rgb "black"
#set style line 5 ps 2 lw 2 lt rgb "black"
#set style line 6 ps 2 lw 2 lt rgb "black"
#set style line 8 ps 2 lw 2 lt rgb "black"
#set style line 10 ps 2 lw 2 lt rgb "black"
#set style line 12 ps 2 lw 2 lt rgb "black"
#set style line 14 ps 2 lw 2 lt rgb "black"
set tics nomirror
set grid ytics lw 1

#set arrow from 1,1 to 4,1 nohead dt 2 lw 2 lt rgb "black"

set multiplot layout 2,5 rowsfirst
#unset k
#set k left font "15, 40" at 8,-4 maxrows 1 box
set k left font "15, 40" at 4,12 maxrows 1 box
set title 'blackscholes' offset 0,-2.0
plot "parsec.blackscholes.dat" us 2:xtic(1) ti col w lp ls 2, \
         for [i=6:9] '' us i:xtic(1) ti col w lp ls i;
#plot "parsec.blackscholes.dat" us 2:xtic(1) ti col w lp ls 2, \
#         '' us 3:xtic(1) ti col w lp ls 4,\
#         '' us 4:xtic(1) ti col w lp ls 5,\
#         '' us 5:xtic(1) ti col w lp ls 6,\
#         '' us 6:xtic(1) ti col w lp ls 7,\

unset k
set title 'bodytrack' offset 0,-2.0
plot "parsec.bodytrack.dat" us 2:xtic(1) ti col w lp ls 2, \
         for [i=6:9] '' us i:xtic(1) ti col w lp ls i;

unset k
set title 'facesim' offset 0,-2.0
plot "parsec.facesim.dat" us 2:xtic(1) ti col w lp ls 2, \
         for [i=6:9] '' us i:xtic(1) ti col w lp ls i;

unset k
set title 'fluidanimate' offset 0,-2.0
plot "parsec.fluidanimate.dat" us 2:xtic(1) ti col w lp ls 2, \
         for [i=6:9] '' us i:xtic(1) ti col w lp ls i;
unset k
set title 'freqmine' offset 0,-2.0
plot "parsec.freqmine.dat" us 2:xtic(1) ti col w lp ls 2, \
         for [i=6:9] '' us i:xtic(1) ti col w lp ls i;
unset k
set title 'swaptions' offset 0,-2.0
plot "parsec.swaptions.dat" us 2:xtic(1) ti col w lp ls 2, \
         for [i=6:9] '' us i:xtic(1) ti col w lp ls i;
unset k
set title 'x264' offset 0,-2.0
plot "parsec.x264.dat" us 2:xtic(1) ti col w lp ls 2, \
         for [i=6:9] '' us i:xtic(1) ti col w lp ls i;
unset k
set title 'geomean' offset 0,-2.0
plot "parsec.geomean.dat" us 2:xtic(1) ti col w lp ls 2, \
         for [i=6:9] '' us i:xtic(1) ti col w lp ls i;

