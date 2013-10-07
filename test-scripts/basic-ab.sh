#!/bin/bash
echo PREP
ab -n 10 http://localhost/

echo 1000 requests
ab -k -n 1000 -g ab-r1000-c1-1.txt http://localhost/ > ab-r1000-c1-1-results.txt
ab -k -n 1000 -g ab-r1000-c1-2.txt http://localhost/ > ab-r1000-c1-2-results.txt
ab -k -n 1000 -g ab-r1000-c1-3.txt http://localhost/ > ab-r1000-c1-3-results.txt

echo 10000 requests 10 concurrent
ab -k -n 10000 -c 10 -g ab-r10000-c10-1.txt http://localhost/ > ab-r10000-c10-1-results.txt
ab -k -n 10000 -c 10 -g ab-r10000-c10-2.txt http://localhost/ > ab-r10000-c10-2-results.txt
ab -k -n 10000 -c 10 -g ab-r10000-c10-3.txt http://localhost/ > ab-r10000-c10-3-results.txt

echo 100000 requests 100 concurrent
ab -k -n 100000 -c 100 -g ab-r100000-c100-1.txt http://localhost/ > ab-r100000-c100-1-results.txt
ab -k -n 100000 -c 100 -g ab-r100000-c100-2.txt http://localhost/ > ab-r100000-c100-2-results.txt
ab -k -n 100000 -c 100 -g ab-r100000-c100-3.txt http://localhost/ > ab-r100000-c100-3-results.txt

echo DONE