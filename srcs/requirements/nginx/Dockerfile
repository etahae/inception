FROM debian:buster

RUN apt-get update && apt-get install -y nginx && \
    mkdir -p /etc/nginx/ssl/

COPY ./conf/nginx.conf /etc/nginx/conf.d/

COPY ./tools/tnamir_ssl.crt /etc/nginx/ssl/
COPY ./tools/tnamir_ssl.key /etc/nginx/ssl/

RUN mkdir -p /var/www/html/wp && chown -R www-data:www-data /var/www/html/wp

EXPOSE 443/tcp

CMD ["nginx", "-g", "daemon off;"]