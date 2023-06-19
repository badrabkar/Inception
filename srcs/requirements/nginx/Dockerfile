FROM debian:buster

RUN apt update && apt upgrade -y \
&& apt install nginx -y && apt install openssl -y

# COPY conf/config.conf /etc/nginx/sites-available/default
COPY conf/nginx.conf /etc/nginx/conf.d/


# store ssl certificate && nginx configuration files

RUN mkdir -p /etc/nginx/ssl && mkdir -p var/www/babkar.42.fr

COPY tools/index.html var/www/

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout /etc/nginx/ssl/example.key -out /etc/nginx/ssl/example.crt \
-subj "/C=aa/ST=ad/L=ta/O=as/OU=as/CN=as/emailAddress=as"


EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
