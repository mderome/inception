CREATE DATABASE IF NOT EXISTS ${DB_NAME};

CREATE USER IF NOT EXISTS 'wordpress'@'%' IDENTIFIED by '${WP_PASSWORD}';

GRANT ALL PIVILEGES ON ${DB_NAME} TO 'wordpress' WITH GRANT OPTION;

SET PASSWORD FOR 'root'@'localhost'=PASSWORD(${PASSWORD});
FLUSH PRIVILEGE;