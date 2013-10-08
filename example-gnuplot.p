# output as png image
set terminal png

# save file to "out.png"
set output "ab-r1000-c1-1.png"

# graph title
set title "ab-r1000-c1-1"

# nicer aspect ratio for image size
set size 1,0.7

# y-axis grid
set grid y

# x-axis label
set xlabel "request"

# y-axis label
set ylabel "response time (ms)"

# plot data from "ab-r1000-c1-1.txt" using column 9 with smooth sbezier lines
plot "ab-r1000-c1-1.txt" using 9 smooth sbezier with lines title "ab-r1000-c1-1", \
     "ab-r1000-c1-2.txt" using 9 smooth sbezier with lines title "ab-r1000-c1-2", \
     "ab-r1000-c1-3.txt" using 9 smooth sbezier with lines title "ab-r1000-c1-3"