#!/bin/bash
echo PREP
ab -n 10 http://localhost/

echo 1000 requests
ab -k -n 1000 -g ab-r1000-c1-1.txt http://localhost/ > ab-r1000-c1-1-results.txt