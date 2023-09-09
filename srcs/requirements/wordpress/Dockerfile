FROM debian:11

COPY tools/script.sh /etc

RUN apt update && \
    apt upgrade && \
    apt install curl -y && \
    apt install php php-fpm php-mysql -y && \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    chmod +x /etc/script.sh && \
    mkdir -p /var/www/wordpress && \
    wp core download --path=/var/www/wordpress --allow-root

COPY  conf/www.conf /etc/php/7.4/fpm/pool.d/

RUN mkdir -p /run/php


CMD [ "/etc/script.sh"]
