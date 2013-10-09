#!/bin/bash

echo 'html'
./run-small.sh default-html.conf ec2 html1
sleep 10
./run-small.sh default-html.conf ec2 html2
sleep 10
./run-small.sh default-html.conf ec2 html3
sleep 10

./run-10000-10.sh default-html.conf ec2 html1
sleep 10
./run-10000-10.sh default-html.conf ec2 html2
sleep 10
./run-10000-10.sh default-html.conf ec2 html3
sleep 10

./run-100000-100.sh default-html.conf ec2 html1
sleep 10
./run-100000-100.sh default-html.conf ec2 html2
sleep 10
./run-100000-100.sh default-html.conf ec2 html3
sleep 10

echo 'php'
./run-small.sh default-php.conf ec2 php1
sleep 10
./run-small.sh default-php.conf ec2 php2
sleep 10
./run-small.sh default-php.conf ec2 php3
sleep 10

./run-10000-10.sh default-php.conf ec2 php1
sleep 10
./run-10000-10.sh default-php.conf ec2 php2
sleep 10
./run-10000-10.sh default-php.conf ec2 php3
sleep 10

./run-100000-100.sh default-php.conf ec2 php1
sleep 10
./run-100000-100.sh default-php.conf ec2 php2
sleep 10
./run-100000-100.sh default-php.conf ec2 php3
sleep 10

echo 'php-zf2'
./run-small.sh default-php-zf2.conf ec2 php-zf21
sleep 10
./run-small.sh default-php-zf2.conf ec2 php-zf22
sleep 10
./run-small.sh default-php-zf2.conf ec2 php-zf23
sleep 10

./run-10000-10.sh default-php-zf2.conf ec2 php-zf21
sleep 10
./run-10000-10.sh default-php-zf2.conf ec2 php-zf22
sleep 10
./run-10000-10.sh default-php-zf2.conf ec2 php-zf23
sleep 10

./run-100000-100.sh default-php-zf2.conf ec2 php-zf21
sleep 10
./run-100000-100.sh default-php-zf2.conf ec2 php-zf22
sleep 10
./run-100000-100.sh default-php-zf2.conf ec2 php-zf23
sleep 10

echo 'finished'