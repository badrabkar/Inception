FROM debian:11

RUN apt update
RUN apt upgrade
RUN apt install mariadb-server -y


COPY tools/script.sh /etc/
COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod 777 /etc/script.sh

ENTRYPOINT ["/etc/script.sh"]
