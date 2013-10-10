set terminal png

# Medium results
set output "results/ec2-medium-r10000-c10.png"
set title "EC2 Medium instance 10000 requests 10 concurrent"
set boxwidth 0.5
set style fill solid
plot "results/ec2-medium.dat" using 1:3:xtic(2) with boxes

set output "results/ec2-medium-r100000-c100.png"
set title "EC2 Medium instance 100000 requests 100 concurrent"
set boxwidth 0.5
set style fill solid
plot "results/ec2-medium.dat" using 1:4:xtic(2) with boxes

# Large results
set output "results/ec2-large-r10000-c10.png"
set title "EC2 Large instance 10000 requests 10 concurrent"
set boxwidth 0.5
set style fill solid
plot "results/ec2-large.dat" using 1:3:xtic(2) with boxes

set output "results/ec2-large-r100000-c100.png"
set title "EC2 Large instance 100000 requests 100 concurrent"
set boxwidth 0.5
set style fill solid
plot "results/ec2-large.dat" using 1:4:xtic(2) with boxes

# requests
set size 1,0.7
set grid y
set xlabel "request"
set ylabel "response time (ms)"

# Medium requests
set output "results/ec2-medium-r10000-c10-requests.png"
set title "EC2 Medium instance 10000 requests 10 concurrent"
plot "results/ec2-medium/html/ab-r10000-c10-1.txt" using 9 smooth sbezier with lines title "html", \
     "results/ec2-medium/php/ab-r10000-c10-1.txt" using 9 smooth sbezier with lines title "php", \
     "results/ec2-medium/ruby-sinatra/ab-r10000-c10-1.txt" using 9 smooth sbezier with lines title "ruby-sinatra", \
     "results/ec2-medium/java-dropwizard/ab-r10000-c10-1.txt" using 9 smooth sbezier with lines title "java-dropwizard"

set output "results/ec2-medium-r100000-c100-requests.png"
set title "EC2 Medium instance 100000 requests 100 concurrent"
plot "results/ec2-medium/html/ab-r100000-c100-1.txt" using 9 smooth sbezier with lines title "html", \
     "results/ec2-medium/php/ab-r100000-c100-1.txt" using 9 smooth sbezier with lines title "php", \
     "results/ec2-medium/ruby-sinatra/ab-r100000-c100-1.txt" using 9 smooth sbezier with lines title "ruby-sinatra", \
     "results/ec2-medium/java-dropwizard/ab-r100000-c100-1.txt" using 9 smooth sbezier with lines title "java-dropwizard"

set output "results/ec2-medium-r10000-c10-php-zf2-requests.png"
set title "EC2 Medium instance 10000 requests 10 concurrent php-zf2"
plot "results/ec2-medium/php-zf2/ab-r10000-c10-1.txt" using 9 smooth sbezier with lines title "php-zf2"

# Large requests
set output "results/ec2-large-r10000-c10-requests.png"
set title "EC2 Large instance 10000 requests 10 concurrent"
plot "results/ec2-large/html1/ab-r10000-c10-1.txt" using 9 smooth sbezier with lines title "html", \
     "results/ec2-large/php1/ab-r10000-c10-1.txt" using 9 smooth sbezier with lines title "php", \
     "results/ec2-large/ruby-sinatra1/ab-r10000-c10-1.txt" using 9 smooth sbezier with lines title "ruby-sinatra", \
     "results/ec2-large/java-dropwizard1/ab-r10000-c10-1.txt" using 9 smooth sbezier with lines title "java-dropwizard"

set output "results/ec2-large-r100000-c100-requests.png"
set title "EC2 Large instance 100000 requests 100 concurrent"
plot "results/ec2-large/html1/ab-r100000-c100-1.txt" using 9 smooth sbezier with lines title "html", \
     "results/ec2-large/php1/ab-r100000-c100-1.txt" using 9 smooth sbezier with lines title "php", \
     "results/ec2-large/ruby-sinatra1/ab-r100000-c100-1.txt" using 9 smooth sbezier with lines title "ruby-sinatra", \
     "results/ec2-large/java-dropwizard1/ab-r100000-c100-1.txt" using 9 smooth sbezier with lines title "java-dropwizard"

set output "results/ec2-large-r10000-c10-php-zf2-requests.png"
set title "EC2 Large instance 10000 requests 10 concurrent php-zf2"
plot "results/ec2-large/php-zf21/ab-r10000-c10-1.txt" using 9 smooth sbezier with lines title "php-zf2"

set output "results/ec2-large-r100000-c100-php-zf2-requests.png"
set title "EC2 Large instance 100000 requests 100 concurrent php-zf2"
plot "results/ec2-large/php-zf21/ab-r100000-c100-1.txt" using 9 smooth sbezier with lines title "php-zf2"