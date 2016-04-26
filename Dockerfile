FROM nginx:1.9.9
MAINTAINER koudaiii "cs006061@gmail.com"

RUN mkdir -p /var/www/nginx-default

COPY files/nginx-docker.conf /etc/nginx/conf.d/
COPY files/http_gzip_static.conf /etc/nginx/conf.d/
COPY files/nginx.conf /etc/nginx/
COPY files/status.html /var/www/nginx-default/
COPY files/run.sh /run.sh

RUN rm -f /etc/nginx/conf.d/default.conf

CMD ["./run.sh"]
