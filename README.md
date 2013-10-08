# Performance testing

## Introduction

The following is the code, methodology and results for performance tests of a simple JSON API implemented in a variety of languages and frameworks.

The different test APIs are in source under implementations, performance testing scripts are under test-scripts.

## Implementation

Each API implementation must return a response to a get request returning the current datetime in the content.

### HTML

Plain html file for base line

### PHP

A simple PHP API

Apache vhost example:
    ```
    <VirtualHost *:80>
        DocumentRoot /var/www/src/simple-api-performance-testing/implementations/php
        SetEnv APPLICATION_ENV "development"
        <Directory /var/www/src/simple-api-performance-testing/implementations/php>
            DirectoryIndex index.php
            AllowOverride All
            Order allow,deny
            Allow from all
        </Directory>
    </VirtualHost>
    ```

### PHP ZF2

A simple PHP API using the [Zend Framework 2](http://framework.zend.com/) and the standard Zend Skeleton application with small changes to enhance performance
- [Classmap Autoloading](http://samminds.com/2012/11/zf2-performance-quicktipp-2-classmap-autoloading).

Apache vhost example:
    ```
    <VirtualHost *:80>
        DocumentRoot /var/www/src/simple-api-performance-testing/implementations/php-zf2/public
        SetEnv APPLICATION_ENV "development"
        <Directory /var/www/src/simple-api-performance-testing/implementations/php-zf2/public>
            DirectoryIndex index.php
            AllowOverride All
            Order allow,deny
            Allow from all
        </Directory>
    </VirtualHost>
    ```
You must install dependencies from composer before testing:
    ```
    php composer.phar install
    ```

### Ruby Sinatra

Simple Ruby Sinatra app, running on Unicorn with 8 worker processes. Not using apache, instead run tests directly against Unicorn running on port 8080.

To setup you must first get the gems:
    ```
    cd ~/simple-api-performance-testing/implementations/ruby-sinatra
    bundle
    ```
Before running tests startup Unicorn:
    ```
    cd ~/simple-api-performance-testing/implementations/ruby-sinatra
    unicorn -c unicorn.conf &
    ```
Kill Unicorn by killing the master pid (in basic_unicorn.pid):
    ```
    kill QUIT 1234
    ```

## Testing

All performance tests are done using apache benchmark, using the scripts under test-scripts. As a base line a plain html file is also included.

## EC2 setup

Used the standard Redhat image with the following to configure:

    ```
    sudo yum install git
    cd ~
    git clone https://github.com/stevenalexander/simple-api-performance-testing.git
    sudo yum install httpd
    sudo chkconfig --levels 235 httpd on
    # uncomment NameVirtualHost *:80 and add vhost
    sudo vi /etc/httpd/conf/httpd.conf
    sudo service httpd restart
    sudo yum install php
    sudo ln -s ~/simple-api-performance-testing/implementations/ /var/www/
    # ruby setup
    sudo yum remove libyaml.x86_64
    \curl -L https://get.rvm.io | bash
    rvm requirements
    rvm install 2.0.0
    ```

Instance sizes:
Instance Type|vCPU|ECU|Memory (GiB)
m1.small|1|1|1.7
m1.medium|1|2|3.75
m1.large|2|4|7.5
m1.xlarge|4|8|15

## Results


## Links
* [Howto: Performance Benchmarks a Webserver](http://www.cyberciti.biz/tips/howto-performance-benchmarks-a-web-server.html)
* [Plot using gnuplot](http://tjholowaychuk.com/post/543349452/apachebench-gnuplot-graphing-benchmarks)