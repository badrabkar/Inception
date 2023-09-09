#!/bin/bash

sleep 10

cd /var/www/wordpress

wp config create --dbname=$MYSQL_DATABASE_NAME --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb --allow-root --skip-check

wp core install --url=$DOMAIN_NAME --title=$TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root --skip-email

wp user create $MYSQL_USER $MYSQL_USER@example.com --role=author --user_pass=$MYSQL_PASSWORD --allow-root

wp theme install inspiro --allow-root --activate

/usr/sbin/php-fpm7.4 -F