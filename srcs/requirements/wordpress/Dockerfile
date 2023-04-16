FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install curl php7.3-fpm php-mysql mariadb-client

COPY ./conf/www.conf /
COPY ./tools/wp.sh /

RUN chmod +x wp.sh && chmod 755 www.conf

CMD ["bash", "wp.sh"]

# php-fpm fastcgi prosses manager to run php scripts
