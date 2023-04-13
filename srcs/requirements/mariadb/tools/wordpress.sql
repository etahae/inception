CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS tnamir@localhost IDENTIFIED BY userpassword;
GRANT all privileges ON wordpress.* TO tnamir@localhost;
flush privileges;
ALTER USER 'root'@localhost IDENTIFIED BY rootpassword;