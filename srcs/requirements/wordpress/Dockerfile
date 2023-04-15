FROM debian:stable

RUN apt-get update && apt-get install -y php7.3 php-mysql php7.3-fpm mariadb-client wget unzip systemctl curl

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
# COPY ./conf/wp-config.php /
COPY ./tools/wp.sh /

RUN chmod 777 /wp.sh && /wp.sh && rm -rf wp.sh

CMD ["/usr/sbin/php-fpm7.3", "-F"]
