#!/bin/bash

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar


mv wp-cli.phar /usr/local/bin/wp

chmod +x /usr/local/bin/wp

wp cli update

wp core download --allow-root

mv wp-config-sample.php wp-config.php


sed -i "s/database_name_here/$DB_NAME/1" wp-config.php

sed -i "s/username_here/$DB_USER/1" wp-config.php

sed -i "s/password_here/$DB_PASS/1" wp-config.php

sed -i "s/localhost/mariadb/1" wp-config.php

wp core install --url=$DOMAIN_NAME/ --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL  --allow-root

wp user create $WP_USR $WP_USR_EMAIL --role=author --user_pass=$WP_USR_PWD --allow-root

sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/1' /etc/php/7.3/fpm/pool.d/www.conf

mkdir -p /run/php/php7.3-fpm.sock

php-fpm7.3 -F