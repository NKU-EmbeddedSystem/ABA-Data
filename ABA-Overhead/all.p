set term png size 1920,1080
set output 'blackscholes.png'
set title "blackscholes"

# Where to put the legend
# and what it should contain
set key invert reverse Left outside
set key autotitle columnheader

set ylabel "total"

# Define plot style 'stacked histogram'
# with additional settings
set style data histogram
set style histogram rowstacked
set style fill solid border -1
set boxwidth 0.75

# We are plotting columns 2, 3 and 4 as y-values,
# the x-ticks are coming from column 1
plot 'blackscholes.dat' using 2:xtic(1) \
    , for [i=3:4] '' using i

plot 'blackscholes.dat' using 2:xtic(1) \
    , for [i=5:6] '' using i