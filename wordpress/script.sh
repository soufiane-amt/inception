#!/bin/bash

mkdir wordpress

cd wordpress

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar


mv wp-cli.phar /usr/local/bin/wp

chmod +x /usr/local/bin/wp

wp cli update

wp core download --allow-root

mv wp-config-sample.php wp-config.php

wp core install --url=$DOMAIN_NAME/ --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL  --allow-root

