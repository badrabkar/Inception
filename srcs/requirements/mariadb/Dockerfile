FROM debian:11

RUN apt update && \
    apt upgrade && \
    apt install mariadb-server -y

COPY tools/script.sh /etc/
COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x /etc/script.sh

ENTRYPOINT ["/etc/script.sh"]
