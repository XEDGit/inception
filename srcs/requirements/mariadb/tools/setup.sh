#!/bin/bash
mkdir -p /run/mysqld
if ! [ -d "/var/lib/mysql/$MYSQL_DATABASE" ]
then
	service mariadb start >/dev/null 2>&1
	if mysqladmin --wait=10 -u root password "$MYSQL_PASSWORD"
	then
		mysql -u root -p"$MYSQL_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
		mysql -u root -p"$MYSQL_PASSWORD" -e "GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
		mysql -u root -p"$MYSQL_PASSWORD" -e "FLUSH PRIVILEGES;"
		echo "New database set up"
	else
		echo "Database failed to set up"
		exit 1
	fi
else
	echo "Database found"
fi
service mariadb stop >/dev/null 2>&1
sed "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf > /etc/mysql/mariadb.conf.d/50-server.cnf 
echo "Running mariadb..."
exec mysqld