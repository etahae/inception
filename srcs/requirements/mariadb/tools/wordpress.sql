CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'tnamir'@'%' IDENTIFIED BY 'userpassword' ;
GRANT ALL PRIVILEGES ON wordpress.* TO 'tnamir'@'%' ;