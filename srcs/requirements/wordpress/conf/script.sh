
FILE=/var/www/html/.config_create

if  [ ! -f "$FILE" ]; then
	echo "Create config"
	rm -rf /var/www/html/wp-config.php
	wp config create --dbname=$WP_DB --dbuser="wordpress" --dbpass=$PASSWORD --dbhost="mariadb" --path="/var/www/html/" --allow-root --skip-check
	wp core install --url="localhost" --title="mderome site" --admin_user="mderome" --admin_password="mderome.2014" --admin_email="mderome@student.42.fr" --path="/var/www/html/" --allow-root
	wp user create draicus draicus@student.42.fr --role=author --user_pass="qwerty12" --allow-root
	touch /var/www/html/.config_create
fi
echo "Config already done"
exec php-fpm7.3 --nodaemonize