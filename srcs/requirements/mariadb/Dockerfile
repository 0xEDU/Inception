FROM alpine:3.17

ARG WP_DATABASE_NAME
ARG WP_DATABASE_USER
ARG WP_DATABASE_PASSWORD
ARG WP_DATABASE_ROOT
ARG WP_DATABASE_ROOT_PASSWORD

RUN mkdir -p /var/lib/mysql /var/run/mysqld && chmod -R 777 /var/run/mysqld

COPY ./conf/my.cnf /etc/my.cnf

RUN apk update && apk add --no-cache mariadb mariadb-client openrc; \
	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld

COPY ./tools/configure-db.sh /tmp/configure-db.sh
RUN chmod a+x /tmp/configure-db.sh; ash -f /tmp/configure-db.sh

EXPOSE 3306

ENTRYPOINT  [ "mariadbd-safe" ]