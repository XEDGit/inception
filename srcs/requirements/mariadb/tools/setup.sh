#!/bin/bash
mkdir -p /run/mysqld
if ! [ -d "/var/lib/mysql/$MYSQL_DATABASE" ]
then
		/etc/init.d/mysql start 2>/dev/null 1>&2
		sleep 1
		mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE DATABASE $MYSQL_DATABASE; GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'; FLUSH PRIVILEGES;"
		echo "New database set up"
else
	echo "Database found"
fi
/etc/init.d/mysql stop 2>/dev/null 1>&2
sed "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf > /etc/mysql/mariadb.conf.d/50-server.cnf 
echo "Running mariadb..."
exec mysqld