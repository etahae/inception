FROM debian:stable

RUN apt-get update && apt-get install -y nginx && \
    mkdir -p /etc/nginx/ssl/

COPY ./conf/nginx.conf /etc/nginx/conf.d/

COPY ./tools/* /etc/nginx/ssl/

EXPOSE 443/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]