#!/bin/bash

echo 'HTML'
sar -u 1 >> cpu.txt &
sar -r 1 >> mem.txt &
sudo cp ~/simple-api-performance-testing/default-html.conf /etc/httpd/conf.d/default.conf
sudo service httpd restart
cd ~/simple-api-performance-testing/results/ec2-micro/results-html
~/simple-api-performance-testing/test-scripts/small-ab.sh
pkill sar
sleep 10
echo 'Finished HTML waiting'

echo 'php'
sar -u 1 >> cpu.txt &
sar -r 1 >> mem.txt &
sudo cp ~/simple-api-performance-testing/default-php.conf /etc/httpd/conf.d/default.conf
sudo service httpd restart
cd ~/simple-api-performance-testing/ec2-micro/results-php
~/simple-api-performance-testing/test-scripts/small-ab.sh
pkill sar
sleep 10
echo 'Finished php waiting'

echo 'php-zf2'
sar -u 1 >> cpu.txt &
sar -r 1 >> mem.txt &
sudo cp ~/simple-api-performance-testing/default-php-zf2.conf /etc/httpd/conf.d/default.conf
sudo service httpd restart
cd ~/simple-api-performance-testing/ec2-micro/results-zf2
~/simple-api-performance-testing/test-scripts/small-ab.sh
pkill sar
sleep 10
echo 'Finished php-zf2 waiting'

echo 'php-zf2-perf'
sar -u 1 >> cpu.txt &
sar -r 1 >> mem.txt &
sudo cp ~/simple-api-performance-testing/default-php-zf2-perf.conf /etc/httpd/conf.d/default.conf
sudo service httpd restart
cd ~/simple-api-performance-testing/ec2-micro/results-php-zf2-perf
~/simple-api-performance-testing/test-scripts/small-ab.sh
pkill sar
echo 'Finished php-zf2-perf waiting'