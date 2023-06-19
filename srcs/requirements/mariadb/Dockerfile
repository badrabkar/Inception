FROM debian:buster

RUN apt-get update -y \
&& apt upgrade -y && apt-get install mariadb-server -y


COPY tools/script.sh /etc/
COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod 777 /etc/script.sh

VOLUME /var/lib/mysql


ENTRYPOINT ["/etc/script.sh"]
