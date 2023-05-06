MyDataBase = MyDataBase
DataBaseUser = DataBaseUser
PASSWORD = 1234


echo "CREATE DATABASE $MyDataBase ;" > db1.sql
echo "CREATE USER  '$DataBaseUser'@'%' IDENTIFIED BY '$PASSWORD' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON $MyDataBase.* TO '$DataBaseUser'@'%' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

service mysql start

mysql < db1.sql

