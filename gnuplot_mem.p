set terminal png

set title "mem"

set xlabel 'time'
set ylabel 'memory'
set style data lines

set output "results/ec2-large-r100000-c100-mem.png"
plot 'results/ec2-large/html1/mem.txt' using (column(0)):4 title 'html', \
	 'results/ec2-large/php1/mem.txt' using (column(0)):4 title 'php', \
	 'results/ec2-large/ruby-sinatra1/mem.txt' using (column(0)):4 title 'ruby-sinatra', \
	 'results/ec2-large/java-dropwizard1/mem.txt' using (column(0)):4 title 'java-dropwizard'

set output "results/ec2-large-r100000-c100-php-zf2-mem.png"
plot 'results/ec2-large/php-zf21/mem.txt' using (column(0)):4 title 'php-zf2'