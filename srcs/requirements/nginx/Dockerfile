FROM debian:stable

RUN apt-get update && apt-get install -y nginx && \
    mkdir -p /etc/nginx/ssl/

COPY ./conf/nginx.conf /etc/nginx/conf.d/

COPY ./tools/* /etc/nginx/ssl/

RUN mkdir -p /run/php/ && chown -R www-data:www-data /run/php/

EXPOSE 443/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]