FROM debian:11

COPY tools/script.sh /etc

RUN apt update && \
    apt upgrade -y && \
    apt install nginx -y && \
    apt install openssl -y && \
    mkdir -p /etc/nginx/ssl && \
    chmod +x /etc/script.sh && \
    openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
    -keyout /etc/nginx/ssl/example.key \
    -out /etc/nginx/ssl/example.crt \
    -subj "/C=aa/ST=ad/L=ta/O=as/OU=as/CN=as/emailAddress=as"

ENTRYPOINT [ "/etc/script.sh" ]