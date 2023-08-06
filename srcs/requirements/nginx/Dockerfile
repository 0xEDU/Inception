FROM alpine:3.17

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

RUN apk update && apk add nginx --no-cache openssl openrc; \
	openssl req -newkey rsa:2048 -nodes -keyout /etc/nginx/private.key -x509 -days 365 -out /etc/nginx/certificate.pem -subj "/C=BR/ST=SP/L=SãoPaulo/O=42sp/CN=etachott.42.fr"

ENTRYPOINT ["nginx", "-g", "daemon off;"]
