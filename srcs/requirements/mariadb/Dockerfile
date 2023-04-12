FROM debian:stable

RUN apt-get update && apt-get install -y mariadb-server mariadb-client systemd

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/db.sql /

RUN service mariadb start && mariadb < db.sql && rm -rf db.sql && \
    mkdir -p /data/mysql && chown -R /data/mysql

EXPOSE 3306

CMD mysqld_safe

