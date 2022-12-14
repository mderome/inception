#!/bin/bash

FILE=/var/lib/mysql/.db_create
if  [ ! -f "$FILE" ]
then
	echo "Je creer la Base de donnee"
	envsubst < /var/init.sql > /var/init_env.sql
	service mysql start
	mysql -D mysql < /var/init_env.sql | true
	touch /var/lib/mysql/.db_create
	service mysql stop | echo -n ""
fi
echo "Base de donnee deja creer"
exec mysqld_safe