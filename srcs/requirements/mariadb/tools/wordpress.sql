CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'wp_user'@'%' IDENTIFIED BY 'userpassword' ;
GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_user'@'%' ;
ALTER USER 'tnamir'@'localhost' IDENTIFIED BY 'rootpassword';
FLUSH PRIVILEGES;