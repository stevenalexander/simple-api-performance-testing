#!/bin/bash

# run e.g.
# ./run-small.sh default-html.conf ec2-micro html

HOME=~/simple-api-performance-testing
VHOST_CONF=$1
RESULT_CAT=$2
RESULT_TYPE=$3

mkdir $HOME/results/$RESULT_CAT
mkdir $HOME/results/$RESULT_CAT/$RESULT_TYPE

echo $RESULT_TYPE
sudo cp $HOME/$VHOST_CONF /etc/httpd/conf.d/default.conf
sudo service httpd restart
cd $HOME/results/$RESULT_CAT/$RESULT_TYPE
sar -u 1 > cpu.txt &
sar -r 1 > mem.txt &
echo prep
ab -n 10 http://localhost/
echo 1000 requests
ab -k -n 1000 -g ab-r1000-c1-1.txt http://localhost/ > ab-r1000-c1-1-results.txt
pkill sar
echo 'Finished $RESULT_TYPE'