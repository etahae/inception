FROM debian:stable

EXPOSE 3306

RUN apt-get update && apt-get -y upgrade && apt-get install -y mariadb-server && \
    mkdir -p /var/run/mysqld; chown -R mysql:mysql /var/run/mysqld

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/wordpress.sql /

RUN service mariadb start && mariadb < wordpress.sql && rm -rf wordpress.sql && \
    mariadb --user=root --execute "ALTER USER 'root'@'localhost' IDENTIFIED BY 'rootpassword';" && \
    service mariadb stop

CMD mysqld_safe

