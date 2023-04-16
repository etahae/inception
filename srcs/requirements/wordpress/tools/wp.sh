# wget https://wordpress.org/latest.zip
# unzip latest.zip
# cp -r wordpress/* /var/www/html/wp

# cd /var/www/html/wp
# sed -i "s/username_here/$DB_USER/g" wp-config-sample.php
# sed -i "s/password_here/$DB_USER_PASSWD/g" wp-config-sample.php
# sed -i "s/localhost/mariadb/g" wp-config-sample.php
# sed -i "s/database_name_here/$DB_NAME/g" wp-config-sample.php
# cp wp-config-sample.php wp-config.php

# chown -R www-data /var/www/wordpress

# wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# chmod +x wp-cli.phar
# mv wp-cli.phar /usr/local/bin/wp

# wp core install --allow-root --url=tnamir.42.fr --title=inception --admin_user=root --admin_password=rootpassword --admin_email=root@gmail.com
# wp user create --allow-root tnamir tnamir@gmail.com --role=author --user_pass=userpassword


#!/bin/sh

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

sed -i '36s/.*/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf

mkdir -p /run/php

cd /var/www/wordpress

wp --allow-root core download --path=/var/www/wordpress

wp config create  --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=mariadb --path=/var/www/wordpress --allow-root

wp core install --path=/var/www/wordpress --url=${DOMAIN_NAME} --title=inception --admin_user=${WP_ADMINE_USER} --admin_password=${WP_ADMINE_PASSWORD} --admin_email=root1337@gmail.com --skip-email --allow-root

wp user create ${WP_USER} tnamir1337@gmail.com --user_pass=${WP_USER_PASSWORD} --path=/var/www/wordpress --allow-root


# ${MYSQL_DATABASE}