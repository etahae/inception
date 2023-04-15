FROM debian:stable

RUN apt-get update && apt-get install -y php8 php-mysql php8-fpm mariadb-client wget unzip systemctl curl

COPY ./conf/www.conf /etc/php/8/fpm/pool.d/
# COPY ./conf/wp-config.php /
COPY ./tools/wp.sh /

RUN chmod 777 /wp.sh && /wp.sh && rm -rf wp.sh

CMD ["/usr/sbin/php-fpm8", "-F"]
