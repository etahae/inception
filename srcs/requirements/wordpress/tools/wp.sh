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

mv www.conf /etc/php/7.3/fpm/pool.d

mkdir -p /run/php

cd ${WP_PATH}

wp --allow-root core download --path=${WP_PATH}
wp config create  --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${DB_HOST} --path=${WP_PATH} --allow-root
wp core install --path=${WP_PATH} --url=${DOMAIN_NAME} --title=${TITLE} --admin_user=${ROOT_USER} --admin_password=${ROOT_PASSWORD} --admin_email=${WP_ROOT_EMAIL} --skip-email --allow-root
# wp user create ${WP_USER} ${WP_USER_EMAIL} --role=author --user_pass=${WP_USER_PASSWORD} --path=${WP_PATH} --allow-root

/usr/sbin/php-fpm7.3 -F
echo "wp is configured succefully!"