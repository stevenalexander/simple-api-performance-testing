#!/bin/bash

# ruby sinatra must be running on http://localhost:8080/

echo 'java-dropwizard'
./run-small.sh default-html.conf ec2 java-dropwizard1 http://localhost:8080/
sleep 10
./run-small.sh default-html.conf ec2 java-dropwizard2 http://localhost:8080/
sleep 10
./run-small.sh default-html.conf ec2 java-dropwizard3 http://localhost:8080/
sleep 10

./run-10000-10.sh default-html.conf ec2 java-dropwizard1 http://localhost:8080/
sleep 10
./run-10000-10.sh default-html.conf ec2 java-dropwizard2 http://localhost:8080/
sleep 10
./run-10000-10.sh default-html.conf ec2 java-dropwizard3 http://localhost:8080/
sleep 10

./run-100000-100.sh default-html.conf ec2 java-dropwizard1 http://localhost:8080/
sleep 10
./run-100000-100.sh default-html.conf ec2 java-dropwizard2 http://localhost:8080/
sleep 10
./run-100000-100.sh default-html.conf ec2 java-dropwizard3 http://localhost:8080/
sleep 10

echo 'finished'