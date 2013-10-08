set terminal png
set output "mem.png"
set title "mem"

set xdata time
set timefmt '%H:%M:%S'
set xrange ["05:53:11":"05:57:31"]
set xlabel 'time'
set ylabel 'memory'
set style data lines

plot 'cpu.txt' using 1:3 title 'mem used'
