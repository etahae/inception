FROM debian:buster

RUN apt-get --assume-yes update && apt-get --assume-yes upgrade ; \
apt-get --assume-yes install mariadb-server

COPY ./conf/db.sh .

RUN chmod +x db.sh

CMD ["bash" , "db.sh"]
