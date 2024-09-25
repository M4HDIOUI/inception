#!/bin/bash

export wordpress_path="/var/www/html/"

mkdir -p $wordpress_path

cd "$wordpress_path"

    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

    wp user create ${WP_USER} ${WP_EMAIL} --role=editor --user_pass=${WP_PASS} --allow-root
    wp user create ${WP_ADMIN} ${WP_ADMIN_USER_EMAIL} --role=administrator --user_pass=123456 --allow-root

    rm -f "${wordpress_path}wp-config-sample.php"

    wp theme install neve --allow-root --path="$wordpress_path"
    wp theme activate neve --allow-root --path="$wordpress_path"

    mkdir -p /run/php/
    sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf

/usr/sbin/php-fpm7.4 -F
