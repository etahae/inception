FROM debian:stable

RUN apt-get update && apt-get install -y php7.4 php-mysqli php7.4-fpm wget unzip systemctl

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/
COPY ./tools/wp.sh /

RUN /wp.sh && rm -rf wp.sh

CMD ["/usr/sbin/php-fpm7.4", "-F"]
