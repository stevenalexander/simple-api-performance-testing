set terminal png
set output "cpu.png"
set title "cpu"

set xdata time
set timefmt '%H:%M:%S'
set xlabel 'time'
set ylabel ' CPU Usage'
set style data lines
plot 'cpu.txt' using 1:3 title 'User' ,\
     'cpu.txt' using 1:5 title 'System'
