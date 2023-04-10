CREATE DATABASE wordpress;
GRANT all privileges on wordpress.* TO 'tnamir'@'localhost' identified by 'user_password';
flush privileges;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'root_password';