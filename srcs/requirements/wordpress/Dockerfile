FROM alpine:3.17

RUN mkdir -p /var/www/wordpress

WORKDIR /var/www/wordpress
COPY conf/index.php .

RUN apk update
RUN apk add php-fpm

EXPOSE 9000

RUN echo "listen = 0.0.0.0:9000" >> /etc/php81/php-fpm.d/www.conf
ENTRYPOINT [ "php-fpm81", "-F" ]
# ENTRYPOINT [ "tail", "-f" ]