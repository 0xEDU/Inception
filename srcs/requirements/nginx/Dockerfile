FROM debian:bullseye

ARG DOMAIN_NAME

RUN apt-get update && apt-get install nginx openssl -y

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

RUN openssl req -newkey rsa:2048 -nodes -keyout /etc/nginx/private.key -x509 -days 365 -out /etc/nginx/certificate.pem -subj "/C=BR/ST=SP/L=SãoPaulo/O=42sp/CN=etachott.42.fr"

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
