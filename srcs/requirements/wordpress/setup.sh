#!/bin/bash
if [ "$(ls -A)" == "wp-config.php" ]
then
	wp core download --allow-root
	wp core install --allow-root --url=localhost --title="inception" --admin_user=$WP_USER --admin_password=$WP_PASSWORD --admin_email=lmuzio@student.codam.nl --skip-email
fi
echo "Running php..."
exec php-fpm8.2 -F