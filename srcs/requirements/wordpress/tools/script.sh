#!/bin/bash

sleep 10

# sed -i -e 's/listen =.*/listen = 0.0.0.0:9000/' /etc/php/7.4/fpm/pool.d/www.conf

cd /var/www/wordpress
wp config create --dbname=$MYSQL_DATABASE_NAME --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb:3306 --allow-root --skip-check
wp core install --url=$URL --title=$TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root --skip-email

chown -R www-data:www-data /var/www/wordpress

/usr/sbin/php-fpm7.4 -F