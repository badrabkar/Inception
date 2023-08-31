FROM debian:11

RUN apt update -y \
&& apt upgrade -y && \
apt install mariadb-server mariadb-client -y && \
apt install systemctl -y


COPY tools/script.sh /etc/
COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod 777 /etc/script.sh


ENTRYPOINT ["/etc/script.sh"]
