FROM debian:stable

EXPOSE 3306

RUN apt-get update && apt-get install -y mariadb-server mariadb-client systemd curl && \
    mkdir -p /var/run/mysqld; chown -R mysql:mysql /var/run/mysqld

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/wordpress.sql /
COPY ./tools/db.sh /

RUN service mariadb start && mariadb < wordpress.sql && rm -rf wordpress.sql && \
    chmod +x db.sh && ./db.sh
    

CMD mysqld_safe

