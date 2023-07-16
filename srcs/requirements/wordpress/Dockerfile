FROM alpine:3.17

RUN mkdir -p /var/www/wordpress

WORKDIR /var/www/wordpress/
COPY conf/index.php .

RUN apk update
RUN apk add php-fpm

# ENTRYPOINT [ "php-fpm81" ]
ENTRYPOINT [ "tail", "-f" ]