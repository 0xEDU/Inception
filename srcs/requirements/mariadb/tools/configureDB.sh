#!/bin/sh

service mariadb start

mysql -e "DROP USER IF EXISTS ''@'localhost'"

mysqld