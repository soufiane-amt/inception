#!/bin/bash

MyDataBase="MyDataBase"
DataBaseUser="DataBaseUser"
PASSWORD="1234"

service mysql start

mysql -u root  -e "CREATE DATABASE IF NOT EXISTS $MyDataBase";
mysql -u root  -e "CREATE USER IF NOT EXISTS '$DataBaseUser'@'%' IDENTIFIED BY '$PASSWORD'" ;
mysql -u root  -e "GRANT ALL PRIVILEGES ON *.* TO '$DataBaseUser'@'%';" ;
mysql -u root  -e "FLUSH PRIVILEGES;"

kill `cat /var/run/mysqld/mysqld.pid`

mysqld
