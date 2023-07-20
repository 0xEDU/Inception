FROM alpine:3.17

ARG WP_DATABASE_NAME
ARG WP_DATABASE_USER
ARG WP_DATABASE_PASSWORD
ARG WP_DATABASE_ROOT
ARG WP_DATABASE_ROOT_PASSWORD

RUN mkdir -p /var/lib/mysql /var/run/mysqld 
RUN chmod -R 777 /var/run/mysqld

COPY ./conf/my.cnf /etc/my.cnf

RUN apk update
RUN apk add mariadb mariadb-client openrc
RUN chown -R mysql:mysql /var/lib/mysql /var/run/mysqld

COPY ./tools/configure-db.sh /tmp/configure-db.sh
RUN chmod a+x /tmp/configure-db.sh
RUN ash -f /tmp/configure-db.sh

EXPOSE 3306

ENTRYPOINT  [ "mariadbd-safe" ]