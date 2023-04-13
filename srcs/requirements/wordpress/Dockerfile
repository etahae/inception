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

RUN cd /var/www && \
    sed -i "s/username_here/$MARIADB_USER/g" wp-config-sample.php && \
    sed -i "s/password_here/$MARIADB_PASSWORD/g" wp-config-sample.php && \
    sed -i "s/localhost/$WORDPRESS_DB_HOST/g" wp-config-sample.php && \
    sed -i "s/database_name_here/$MARIADB_DATABASE/g" wp-config-sample.php && \
    cp wp-config-sample.php wp-config.php

# COPY ./conf/wp-config.php /var/www/
COPY ./tools/www.conf /etc/php/7.4/fpm/pool.d/

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && \
    wp core install --allow-root --url=$DOMAIN_NAME --title=inception --admin_user=$MARIADB_ROOT_USER \
    --admin_password=$MARIADB_ROOT_PASSWORD --admin_email=root@gmail.com && \
    wp user create --allow-root $MARIADB_USER tnamir@gmail.com --role=author --user_pass=$MARIADB_PASSWORD

EXPOSE 9000

CMD ["/usr/sbin/php-fpm7.4", "-F"]
