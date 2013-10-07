# Performance testing

## Introduction

The following is the code, methodology and results for performance tests of a simple JSON API implemented in a variety of languages and frameworks.

The different test APIs are in source under implementations, performance testing scripts are under test-scripts.

## Implementation

Each API implementation must return a response to a get request returning the current datetime in the content.

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

A simple PHP API using the [Zend Framework 2](http://framework.zend.com/) and the standard Zend Skeleton application.

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

## Results
