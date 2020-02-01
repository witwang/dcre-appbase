#!/bin/bash

echo -e "Start to download extensions!\n\n" # -e

wget -O ./opt/php/memcached.tar.gz https://github.com/php-memcached-dev/php-memcached/archive/v3.1.3.tar.gz
wget -O ./opt/php/mongo.tgz https://github.com/mongodb/mongo-php-driver/releases/download/1.5.3/mongodb-1.5.3.tgz
wget -O ./opt/php/redis.tar.gz https://github.com/phpredis/phpredis/archive/4.3.0.tar.gz
wget -O ./opt/php/phalcon.tar.gz https://github.com/phalcon/cphalcon/archive/v3.4.3.tar.gz
wget -O ./opt/php/phalcon-devtools.tar.gz https://github.com/phalcon/phalcon-devtools/archive/v3.4.3.tar.gz
wget -O ./opt/php/psr.tar.gz https://github.com/jbboehr/php-psr/archive/v0.6.1.tar.gz
wget -O ./opt/php/composer.phar https://mirrors.aliyun.com/composer/composer.phar
# rm -Rf ./opt/php/phalcon-devtools
# git clone git://github.com/phalcon/phalcon-devtools.git ./opt/php/phalcon-devtools

echo -e "\n\nStart to generate nginx SSL Certificates!\n\n" # -e
openssl req -x509 -nodes -days 36500 -newkey rsa:2048 -keyout ./opt/nginx/nginx.key -out ./opt/nginx/nginx.crt

echo -e "\n\nGenerate ENV File!\n\n" # -e
cp .env.example .env

echo -e "\n\ncompleted!" # -e