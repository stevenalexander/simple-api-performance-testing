set terminal png

set xlabel 'time'
set ylabel ' CPU Usage'
set style data lines

# Large
set output "results/ec2-large-r100000-c100-cpu.png"
set title "EC2 Large instance 100000 requests 100 concurrent CPU"
plot 'results/ec2-large/html1/cpu.txt' using (column(0)):3 title 'html', \
	 'results/ec2-large/php1/cpu.txt' using (column(0)):3 title 'php', \
	 'results/ec2-large/ruby-sinatra1/cpu.txt' using (column(0)):3 title 'ruby-sinatra', \
	 'results/ec2-large/java-dropwizard1/cpu.txt' using (column(0)):3 title 'java-dropwizard'

set output "results/ec2-large-r100000-c100-php-zf2-cpu.png"
set title "EC2 Large instance 100000 requests 100 concurrent CPU PHP ZF2"
plot 'results/ec2-large/php-zf21/cpu.txt' using (column(0)):3 title 'php-zf2'