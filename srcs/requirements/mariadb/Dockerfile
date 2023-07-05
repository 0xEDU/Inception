FROM debian:bullseye

RUN apt-get update && apt-get upgrade 
RUN apt-get install mariadb-server -y

COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./tools/configureDB.sh /bin/configureDB
RUN chmod +x /bin/configureDB

RUN mkdir -p /wp-database
RUN chown -R mysql:mysql /wp-database
RUN chmod -R 755 /wp-database


# USER mysql
RUN mariadb-install-db --datadir=/wp-database
# RUN mariadb-install-db
CMD [ "configureDB" ]
