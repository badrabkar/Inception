FROM debian:buster

RUN apt -y update && apt -y install nginx

COPY conf/config.conf /etc/nginx/sites-available/default

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
