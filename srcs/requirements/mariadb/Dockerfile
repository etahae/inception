FROM debian:stable

RUN apt-get update && apt-get install -y mariadb-server mariadb-client systemd

COPY ./conf/mariadb.conf /etc/mysql/mariadb.conf.d/
# COPY ./tools/db.sql /

RUN mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld && \
    chmod 777 /var/run/mysqld

# RUN mkdir -p /home/tnamir/data

EXPOSE 3306

COPY ./tools/mariadb.sh /usr/local/bin/
COPY ./conf/wordpress.sql /usr/local/bin/
RUN chmod +x /usr/local/bin/mariadb.sh
RUN chmod +x /usr/local/bin/wordpress.sql

ENTRYPOINT [ "/usr/local/bin/mariadb.sh" ]

CMD ["mysqld", "--bind-address=0.0.0.0"]

