
FILE=/var/www/html/.config_create

if  [ ! -f "$FILE" ]; then
	echo "Create config"
	rm /var/www/html/wp-config.php
	wp config create --path="/var/www/html/" --dbname=$WP_DB --dbuser=$MARIADB_USER --dbpass=$MARIADB_USER_PWD --dbhost="mariadb" --allow-root --skip-check
	echo "wp config create reussi"
	sleep 10
	wp core install --url="mderome.42.fr" --title="mderome site" --admin_user="mderome" --admin_password="mderome.2014" --admin_email="mderome@student.42.fr" --path="/var/www/html/" --allow-root
	wp user create draicus draicus@student.42.fr --role=author --user_pass="qwerty12" --allow-root
	touch /var/www/html/.config_create
fi
echo "Config already done"
exec php-fpm7.3 --nodaemonize
