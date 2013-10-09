#!/bin/bash

# run e.g.
# ./run-10000-10.sh default-html.conf ec2-micro html

HOME=~/simple-api-performance-testing
VHOST_CONF=$1
RESULT_CAT=$2
RESULT_TYPE=$3

if [ -z "$4" ]; then
    URL=http://localhost/
else
    URL=$4
fi

mkdir $HOME/results/$RESULT_CAT
mkdir $HOME/results/$RESULT_CAT/$RESULT_TYPE

echo $RESULT_TYPE
sudo cp $HOME/$VHOST_CONF /etc/httpd/conf.d/default.conf
sudo service httpd restart
cd $HOME/results/$RESULT_CAT/$RESULT_TYPE
sar -u 1 > cpu.txt &
sar -r 1 > mem.txt &
echo prep
ab -n 10 $URL
echo 10000 requests
ab -k -n 10000 -c 10 -g ab-r10000-c10-1.txt $URL > ab-r10000-c10-1-results.txt
pkill sar
echo 'Finished $RESULT_TYPE'