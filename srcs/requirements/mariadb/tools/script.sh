#!/bin/bash

service mysql start

mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE_NAME;CREATE USER IF NOT EXISTS $MYSQL_USER@localhost IDENTIFIED BY '$MYSQL_PASSWORD';GRANT ALL PRIVILEGES ON $MYSQL_DATABASE_NAME.* TO $MYSQL_USER@localhost;SET PASSWORD FOR root@localhost=PASSWORD('$MYSQL_ROOT_PASSWORD');FLUSH PRIVILEGES;"

mysqladmin -p"$MYSQL_ROOT_PASSWORD" shutdown
exec mysqld_safe