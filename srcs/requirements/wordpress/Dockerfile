FROM debian:buster

RUN apt update && apt upgrade -y \
&& apt install wget -y && apt install unzip -y \
&& apt install php php-fpm php-mysql -y


RUN mkdir -p var/www/

RUN wget https://wordpress.org/latest.zip && unzip latest.zip \
&& rm latest.zip && cp wordpress/wp-config-sample.php wordpress/wp-config.php && mv wordpress /var/www/

CMD [ "sleep" , "infinity"]
