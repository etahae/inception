CREATE DATABASE wordpress;
GRANT all privileges on wordpress.* TO $MYSQL_USER@'localhost' identified by $MYSQL_PASSWORD;
flush privileges;

ALTER USER $MYSQL_ROOT_USER@'localhost' IDENTIFIED BY $MYSQL_ROOT_PASSWORD;