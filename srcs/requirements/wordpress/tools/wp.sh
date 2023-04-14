mkdir -p /run/php

if [ ! -f /var/www/wordpress/index.php ]; then
    mkdir -p /var/www/

    wget https://wordpress.org/latest.zip
    unzip latest.zip
    cp -r wordpress/ /var/www/

    cd /var/www/wordpress
    mv /wp-config.php .
    chown -R www-data /var/www/wordpress
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp
    wp core install --allow-root --url=tnamir.42.fr --title=inception --admin_user=tnamir --admin_password=rootpassword --admin_email=tnamir@gmail.com
    wp user create --allow-root wp_user tnamir@hotmail.com --role=author --user_pass=userpassword
fi