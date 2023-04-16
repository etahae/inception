mv 50-server.cnf /etc/mysql/mariadb.conf.d/

if [ ! -d "/var/lib/mysql/${MYSQL_DATABASE}" ]
then

# mkdir -p /var/run/mysqld
# chown mysqld /var/run/mysqld

service mysql start

mysql --user=root --execute "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"
mysql --user=root --execute "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql --user=root --execute "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD};"
mysql --user=root --execute "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
mysql --user=root -p ${MYSQL_ROOT_PASSWORD} --execute "FLUSH PRIVILEGES;"

kill $(cat /var/run/mysqld/mysqld.pid)
sleep 5

# kill $(cat /var/run/mysqld/mysqld.pid)

fi

mysqld_safe