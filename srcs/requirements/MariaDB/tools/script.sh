#!/bin/bash

FILE=/var/lib/mysql/.db_create
if [ ! -f "$FILE" ]
then
	envsubst < var/init.sql > var/init_env.sql
	mysqld
	mysql -D mysql < /var/init_env.sql | true
	service mysql stop | echo -n ""
fi
exec mysqld