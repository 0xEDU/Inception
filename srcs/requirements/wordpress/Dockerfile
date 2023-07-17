FROM alpine:3.17

# Move scripts to container
COPY tools/setupWP.sh /tmp/setupWP.sh
RUN chmod +x /tmp/setupWP.sh

# Download Wordpress
WORKDIR /var/www/
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xf latest.tar.gz
RUN rm -rf latest.tar.gz

# Update and install dependencies
RUN apk update
RUN apk add php-fpm php81 \
			php81-phar php81-common php81-session php81-iconv php81-json \
			php81-gd php81-curl php81-xml php81-mysqli php81-imap php81-cgi \
			fcgi php81-pdo php81-pdo_mysql php81-soap php81-posix \
			php81-gettext php81-ldap php81-ctype php81-dom php81-simplexml

# Configure Wordpress
WORKDIR /var/www/wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN ash -f /tmp/setupWP.sh

# Run PHP-FPM on 9000
EXPOSE 9000
RUN echo "listen = 0.0.0.0:9000" >> /etc/php81/php-fpm.d/www.conf
ENTRYPOINT [ "php-fpm81", "-F" ]