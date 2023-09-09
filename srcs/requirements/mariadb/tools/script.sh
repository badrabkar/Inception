#!/bin/bash

service mariadb start

mysql -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE_NAME}\`;"

mysql -e "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"

mysql -e "GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE_NAME}\`.* TO \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"

mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"

mysqladmin -u root -p$MYSQL_ROOT_PASSWORD shutdown

mysqld_safe