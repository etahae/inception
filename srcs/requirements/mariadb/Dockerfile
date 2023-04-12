FROM debian:stable

RUN apt-get update && apt-get install -y mariadb-server mariadb-client systemd \
    && rm -rf /var/lib/apt/lists/*

COPY ./conf/mariadb.conf /etc/mysql/mariadb.conf.d/
COPY ./tools/db.sql /

RUN service mariadb start && mariadb < db.sql && rm -rf db.sql && \
    mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld && \
    chmod 777 /var/run/mysqld

# RUN mkdir -p /home/tnamir/data

EXPOSE 3306

CMD ["mysqld"]

