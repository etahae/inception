FROM debian:stable

RUN apt-get update && apt-get install -y mariadb-server mariadb-client systemd

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/wordpress.sql /

RUN service mariadb start && mariadb < wordpress.sql && rm -rf wordpress.sql && \
    mkdir -p /data/mysql && chown -R mysql:mysql /data/mysql && \
    chmod 777 /data/mysql

EXPOSE 3306

CMD mysqld

