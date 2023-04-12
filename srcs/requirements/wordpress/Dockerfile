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
    unzip latest.zip && \
    rm -rf latest.zip && \
    chown -R www-data:www-data /var/www/* && \
    chmod -R 755 /var/www/* && \
    mkdir -p /run/php/
# && cp -rf wordpress/* .

COPY ./conf/wp-config.php /var/www/
COPY ./tools/www.conf /etc/php/7.4/fpm/pool.d/

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && \
    wp core install --allow-root --url=$DOMAIN_NAME --title=inception --admin_user=$MYSQL_ROOT_USER \
    --admin_password=$MYSQL_ROOT_PASSWORD --admin_email=root@gmail.com && \
    wp user create --allow-root $MYSQL_USER tnamir@gmail.com --role=author --user_pass=$MYSQL_PASSWORD

EXPOSE 9000

CMD ["/usr/sbin/php-fpm7.4", "-F"]
