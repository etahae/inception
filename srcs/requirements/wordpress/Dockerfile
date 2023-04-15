FROM debian:stable

RUN apt-get update && apt-get install -y php7.4 php-mysql php7.4-fpm mariadb-server \
    mariadb-client wget unzip systemctl curl

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/
# COPY ./conf/wp-config.php /
COPY ./tools/wp.sh /

RUN mkdir -p /var/www/html/wp && chmod +x /wp.sh && /wp.sh && rm -rf wp.sh

CMD ["/usr/sbin/php-fpm7.4", "-F"]
