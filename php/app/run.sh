#!/bin/sh

php-fpm;
chmod 0777 /var/run/php/php7.4-fpm.sock;
nginx;
