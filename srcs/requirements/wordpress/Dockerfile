FROM debian:stable

RUN apt-get update && apt-get install -y    php php-mysql \
                                            php7.4-fpm wget \
                                            php-curl php-gd \
                                            php-intl \
                                            php-mbstring \
                                            php-soap \
                                            php-xml \
                                            php-xmlrpc \
                                            php-zip \
                                            curl unzip systemctl

WORKDIR /var/www
RUN wget https://wordpress.org/latest.zip && \
    unzip latest.zip && \
    # cp -rf wordpress/* . && \
    rm -rf latest.zip && \
    chown -R www-data:www-data /var/www/wordpress

COPY ./conf/wp-config.php /var/www/
COPY ./tools/wp-fpm.conf /etc/php/7.4/fpm/pool.d/

EXPOSE 9000

CMD ["service", "php7.4-fpm", "start"]
