CREATE DATABASE $MYSQL_DATABASE;
CREATE USER $MYSQL_USER@localhost IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT all privileges ON $MYSQL_DATABASE.* TO $MYSQL_USER@localhost;
flush privileges;
-- ALTER USER $MYSQL_ROOT_USER@localhost IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';