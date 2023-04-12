FROM debian:stable

RUN apt-get update && apt-get install -y mariadb-server mariadb-client systemd

COPY ./conf/mariadb.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/db.sql /

RUN service mariadb start && mariadb < db.sql && rm -rf db.sql && \
    mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld && \
    chmod 777 /var/run/mysqld

EXPOSE 3306

CMD ["mysqld"]

