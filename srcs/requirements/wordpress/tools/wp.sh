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
fi