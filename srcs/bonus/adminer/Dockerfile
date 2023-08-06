FROM alpine:3.17

COPY tools/adminer-entrypoint.sh /tmp/adminer-entrypoint.sh
RUN chmod +x /tmp/adminer-entrypoint.sh

WORKDIR /tmp
RUN apk update && apk --no-cache add php81 php-fpm php81-mysqli php81-session
RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-en.php \
	&& chmod +x adminer-4.8.1-en.php \
	&& mkdir -p /var/www/adminer \
	&& mv adminer-4.8.1-en.php /var/www/adminer/index.php

EXPOSE 8000
RUN echo "listen = 0.0.0.0:8000" >> /etc/php81/php-fpm.d/www.conf

ENTRYPOINT [ "ash", "-f", "./adminer-entrypoint.sh" ]