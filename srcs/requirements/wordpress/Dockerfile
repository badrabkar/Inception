FROM debian:11

COPY tools/script.sh /etc

RUN apt update
RUN apt upgrade
RUN apt install curl -y
RUN apt install php \
    php-fpm \
    php-mysql -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN chmod +x /etc/script.sh

RUN mkdir -p /var/www/wordpress
RUN wp core download --path=/var/www/wordpress --allow-root

COPY  conf/www.conf /etc/php/7.4/fpm/pool.d/

RUN mkdir -p /run/php


CMD [ "/etc/script.sh"]
# ENTRYPOINT [ "sleep infinity" ]