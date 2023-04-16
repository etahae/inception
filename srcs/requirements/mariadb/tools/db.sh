if [ ! -d "/var/lib/mysql/${MYSQL_DATABASE}" ]
then

service mysql start

mysql --user=root --execute "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"
mysql --user=root --execute "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql --user=root --execute "USE '${MYSQL_DATABASE}'; GRANT ALL PRIVILEGES ON * TO '${MYSQL_USER}'@'%';"
mysql --user=root --execute "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
mysql --user=root -p ${MYSQL_ROOT_PASSWORD} --execute "FLUSH PRIVILEGES;"

service mysql stop

# kill $(cat /var/run/mysqld/mysqld.pid)

fi

mysqld_safe