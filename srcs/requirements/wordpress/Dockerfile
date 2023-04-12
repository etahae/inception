FROM debian:stable

RUN apt-get update && apt-get install -y    php7.4 php7.4-mysql \
                                            php7.4-fpm wget \
                                            php7.4-curl php-gd \
                                            php7.4-intl \
                                            php7.4-mbstring \
                                            php7.4-soap \
                                            php7.4-xml \
                                            php7.4-xmlrpc \
                                            php7.4-zip \
                                            php7.4-cgi \
                                            php7.4-pdo \
                                            php7.4-gd \
                                            php7.4-cli \
                                            curl unzip systemctl

WORKDIR /var/www
RUN wget https://wordpress.org/latest.zip && \
    unzip latest.zip && cp -rf wordpress/* . && \
    rm -rf latest.zip && \
    chown -R www-data:www-data /var/www/* && \
    chmod -R 755 /var/www/* && \
    mkdir -p /run/php/

COPY ./conf/wp-config.php /var/www/
COPY ./tools/www.conf /etc/php/7.4/fpm/pool.d/

# COPY ./tools/db.sql /

# RUN service mariadb start && mariadb < db.sql && rm -rf db.sql

RUN mkdir -p /data/html

EXPOSE 9000

CMD ["/usr/sbin/php-fpm7.4", "-F"]
