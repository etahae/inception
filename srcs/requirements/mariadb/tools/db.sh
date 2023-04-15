service mysql start

sleep 5;

mysql --user=root --execute "CREATE DATABASE IF NOT EXISTS wordpress;"
mysql --user=root --execute "CREATE USER 'tnamir'@'%' IDENTIFIED BY 'userpassword';"
mysql --user=root --execute "USE 'wordpress'; GRANT ALL PRIVILEGES ON * TO 'tnamir'@'%';"
mysql --user=root --execute "ALTER USER 'root'@'localhost' IDENTIFIED BY 'rootpassword';"
mysql --user=root -p rootpassword --execute "FLUSH PRIVILEGES;"

# service mysqld stop
kill $(cat /var/run/mysqld/mysqld.pid)