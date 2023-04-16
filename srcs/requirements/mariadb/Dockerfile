FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade ; \
apt-get -y install mariadb-server

COPY ./tools/db.sh ./
COPY ./conf/50-server.cnf /

RUN chmod +x db.sh

CMD ["bash" , "db.sh"]
