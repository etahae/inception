FROM debian:buster

RUN apt-get --assume-yes update && apt-get --assume-yes upgrade

RUN apt-get --assume-yes install curl php7.3-fpm php-mysql mariadb-client

COPY ./conf/www.conf /
COPY ./tools/wp.sh /
RUN chmod +x wp.sh
CMD ["bash", "wp.sh"]

# php-fpm fastcgi prosses manager to run php scripts
