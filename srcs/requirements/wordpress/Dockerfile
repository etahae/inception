FROM debian:stable

RUN apt-get update && apt-get install -y php php-mysql php-fpm mariadb-server

RUN service mariadb start && mysql_secure_installation



