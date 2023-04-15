mkdir -p /run/php

mkdir -p /var/www/

# wget https://wordpress.org/latest.zip
# unzip latest.zip
# cp -r wordpress/ /var/www/

# mv /wp-config.php .
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp --allow-root core download --path=/var/www/html/wp

# chown -R www-data:www-data /var/www/wordpress

wp config create  --dbname=wordpress --dbuser=tnamir --dbpass=userpassword --dbhost=mariadb --path=/var/www/html/wp --allow-root


# wp core install --path=/var/www/wordpress --url=tnamir.42.fr --title=inception --admin_user=tnamir --admin_password=rootpassword --admin_email=tnamir@live.fr --skip-email --allow-root


# wp user create wp_user tnamir@hotmail.com --user_pass=userpassword --path=/var/www/wordpress --allow-root

# ${MYSQL_DATABASE}