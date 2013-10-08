#!/bin/bash

echo 'HTML'
sudo cp ~/simple-api-performance-testing/default-html.conf /etc/httpd/conf.d/default.conf
sudo service httpd restart
cd ~/simple-api-performance-testing/results/ec2-micro/results-html
sar -u 1 >> cpu.txt &
sar -r 1 >> mem.txt &
~/simple-api-performance-testing/test-scripts/small-ab.sh
pkill sar
echo 'Finished HTML waiting'
sleep 10

echo 'php'
sudo cp ~/simple-api-performance-testing/default-php.conf /etc/httpd/conf.d/default.conf
sudo service httpd restart
cd ~/simple-api-performance-testing/ec2-micro/results-php
sar -u 1 >> cpu.txt &
sar -r 1 >> mem.txt &
~/simple-api-performance-testing/test-scripts/small-ab.sh
pkill sar
echo 'Finished php waiting'
sleep 10

echo 'php-zf2'
sudo cp ~/simple-api-performance-testing/default-php-zf2.conf /etc/httpd/conf.d/default.conf
sudo service httpd restart
cd ~/simple-api-performance-testing/ec2-micro/results-zf2
sar -u 1 >> cpu.txt &
sar -r 1 >> mem.txt &
~/simple-api-performance-testing/test-scripts/small-ab.sh
pkill sar
echo 'Finished php-zf2 waiting'
sleep 10

echo 'php-zf2-perf'
sudo cp ~/simple-api-performance-testing/default-php-zf2-perf.conf /etc/httpd/conf.d/default.conf
sudo service httpd restart
cd ~/simple-api-performance-testing/ec2-micro/results-php-zf2-perf
sar -u 1 >> cpu.txt &
sar -r 1 >> mem.txt &
~/simple-api-performance-testing/test-scripts/small-ab.sh
pkill sar
echo 'Finished php-zf2-perf waiting'