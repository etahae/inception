FROM debian:stable

RUN apt-get update && apt-get install -y nginx

COPY ./conf/default /etc/nginx/conf.d/

EXPOSE 443/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off"]