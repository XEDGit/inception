#!/bin/bash
cd /var/www/html && wget https://wordpress.org/latest.tar.gz && tar -xvzf latest.tar.gz && cd wordpress && mv -u * ../ && cd .. && rm -rf wordpress latest.tar.gz
sed -i 's/listen = \/run\/php\/php8.2-fpm.sock/listen = 127.0.0.1:9000/g' /etc/php/8.2/fpm/pool.d/www.conf
php-fpm8.2 -F