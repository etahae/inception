mkdir -p /run/php


wget https://wordpress.org/latest.zip
unzip latest.zip
cp -r wordpress/* /var/www/html/wp

cd /var/www/html/wp
sed -i "s/username_here/$DB_USER/g" wp-config-sample.php
sed -i "s/password_here/$DB_USER_PASSWD/g" wp-config-sample.php
sed -i "s/localhost/mariadb/g" wp-config-sample.php
sed -i "s/database_name_here/$DB_NAME/g" wp-config-sample.php
cp wp-config-sample.php wp-config.php

chown -R www-data /var/www/wordpress

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core install --allow-root --url=tnamir.42.fr --title=inception --admin_user=root --admin_password=rootpassword --admin_email=root@gmail.com
wp user create --allow-root tnamir tnamir@gmail.com --role=author --user_pass=userpassword











# # wget https://wordpress.org/latest.zip
# # unzip latest.zip
# # cp -r wordpress/ /var/www/

# # mv /wp-config.php .
# curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# chmod +x wp-cli.phar
# mv wp-cli.phar /usr/local/bin/wp

# wp --allow-root core download --path=/var/www/html/wp

# # chown -R www-data:www-data /var/www/wordpress

# wp config create  --dbname=wordpress --dbuser=tnamir --dbpass=userpassword --dbhost=localhost --path=/var/www/html/wp --allow-root


# # wp core install --path=/var/www/wordpress --url=tnamir.42.fr --title=inception --admin_user=tnamir --admin_password=rootpassword --admin_email=tnamir@live.fr --skip-email --allow-root


# # wp user create wp_user tnamir@hotmail.com --user_pass=userpassword --path=/var/www/wordpress --allow-root

# # ${MYSQL_DATABASE}