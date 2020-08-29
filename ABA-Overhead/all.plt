#set terminal postscript eps enhanced color solid font "16" 50 size 18,11
set terminal pdf enhanced font "16, 45" size 35,14
set output "all.pdf"

set style data histograms

set multiplot layout 2,5 rowsfirst
unset k
#set k left font "15, 40" at 8,-4 maxrows 1 box
#set k left font "15, 40" at 4,12 maxrows 1 box
set title 'blackscholes' offset 0,-2.0
plot "blackscholes-HST.dat" using 2:xtic(1), for [i=3:5] '' using i

unset k
set title 'bodytrack' offset 0,-2.0
plot "bodytrack-HST.dat" using 2:xtic(1), for [i=3:5] '' using i

unset k
set title 'facesim' offset 0,-2.0
plot "facesim-HST.dat" using 2:xtic(1), for [i=3:5] '' using i

unset k
set title 'fluidanimate' offset 0,-2.0
plot "fluidanimate-HST.dat" using 2:xtic(1), for [i=3:5] '' using i
unset k
set title 'freqmine' offset 0,-2.0
plot "freqmine-HST.dat" using 2:xtic(1), for [i=3:5] '' using i
unset k
set title 'swaptions' offset 0,-2.0
plot "swaptions-HST.dat" using 2:xtic(1), for [i=3:5] '' using i
unset k
set title 'x264' offset 0,-2.0
plot "x264-HST.dat" using 2:xtic(1), for [i=3:5] '' using i
unset k
