FROM debian:buster

RUN apt-get update && apt-get -y upgrade && apt-get install -y nginx && \
    mkdir -p /etc/nginx/ssl/

COPY ./conf/wp.conf /etc/nginx/conf.d/

COPY ./tools/tnamir_ssl.crt /etc/nginx/ssl/
COPY ./tools/tnamir_ssl.key /etc/nginx/ssl/

RUN mkdir -p /var/www/wordpress && chmod 755 /etc/nginx/conf.d/wp.conf && \
    chown www-data:www-data /var/www/html

EXPOSE 443/tcp

CMD ["nginx", "-t", "&&", "nginx", "-g", "daemon off;"]