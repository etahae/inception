CREATE DATABASE $MYSQL_DATABASE;

GRANT all privileges on $MYSQL_DATABASE.* TO $MYSQL_USER@'localhost' identified by userpassword;

FLUSH privileges;

ALTER USER $MYSQL_ROOT_USER@'localhost' IDENTIFIED BY $MYSQL_ROOT_PASSWORD;