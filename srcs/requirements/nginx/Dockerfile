FROM debian:11

COPY tools/script.sh /etc

RUN apt update 
RUN apt upgrade -y
RUN apt install nginx -y
RUN apt install openssl -y
RUN mkdir -p /etc/nginx/ssl
RUN chmod +x /etc/script.sh
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/example.key -out /etc/nginx/ssl/example.crt \
    -subj "/C=aa/ST=ad/L=ta/O=as/OU=as/CN=as/emailAddress=as"

RUN mkdir -p /var/www/wordpress
    
COPY conf/nginx.conf /etc/nginx/conf.d/
COPY tools/index.html /var/www/html
COPY tools/index1.php /var/www/html
COPY tools/index1.php /var/www/wordpress

EXPOSE 443

ENTRYPOINT [ "/etc/script.sh" ]