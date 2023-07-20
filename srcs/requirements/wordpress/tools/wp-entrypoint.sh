#!/bin/sh

wp config create --allow-root --path=/var/www/wordpress \
	--dbname=$WP_DATABASE_NAME \
	--dbuser=$WP_DATABASE_USER \
	--dbpass=$WP_DATABASE_PASSWORD \
	--dbhost=$WP_DATABASE_HOST \
	--dbprefix='wp_' \
	--dbcharset="utf8"  

wp core install --allow-root --path=/var/www/wordpress --url=$WP_URL --title=$WP_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL

wp theme activate twentytwentytwo --allow-root

php-fpm81 -F