FROM debian:stable

RUN apt-get update && apt-get install -y mariadb-server-10.4 mariadb-client-10.4 systemd

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/db.sql /

RUN service mariadb start && mariadb < db.sql && rm -rf db.sql && \
    mkdir -p /data/mysql && chown -R mysql:mysql /data/mysql && \
    chmod 777 /data/mysql

EXPOSE 3306

CMD mysqld

