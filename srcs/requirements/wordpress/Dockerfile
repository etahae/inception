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
    rm -rf latest.zip

COPY ./tools/www.conf /etc/php/7.4/fpm/pool.d/

RUN cd /var/www/wordpress && \
    sed -i "s/username_here/wp_user/g" wp-config-sample.php && \
    sed -i "s/password_here/userpassword/g" wp-config-sample.php && \
    sed -i "s/localhost/mariadb/g" wp-config-sample.php && \
    sed -i "s/database_name_here/wordpress/g" wp-config-sample.php && \
    cp wp-config-sample.php wp-config.php && \
    chown -R www-data /var/www/wordpress && \
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    wp core install --allow-root --url=tnamir.42.fr --title=inception --admin_user=tnamir --admin_password=rootpassword --admin_email=tnamir@gmail.com && \
    wp user create --allow-root wp_user tnamir@hotmail.com --role=author --user_pass=userpassword

CMD ["/usr/sbin/php-fpm7.4", "-F"]
