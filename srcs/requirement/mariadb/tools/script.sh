#!/bin/bash

# tail -f

echo "
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY 'kiko13';
FLUSH PRIVILEGES;
" > /init.sql


service mysql start

mysql < init.sql

kill $(cat /root/mysql.pid)

mysql_install_db

mysqld_safe