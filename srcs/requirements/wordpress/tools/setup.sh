#!/bin/bash
if [ "$(ls -A)" == "wp-config.php" ]
then
	wp core download --allow-root
	until nc -z $MYSQL_HOSTNAME 3306; do echo "Waiting for mariadb..."; sleep 5; done
	wp core install --allow-root --url=localhost --title="inception" --admin_user=$WP_USER --admin_password=$WP_PASSWORD --admin_email=lmuzio@student.codam.nl --skip-email
fi
mkdir -p /run/php
echo "Running php..."
exec php-fpm7.3 -F