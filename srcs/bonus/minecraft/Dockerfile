FROM alpine:3.17

COPY ./tools/mine-entrypoint.sh /tmp/mine-entrypoint.sh
RUN chmod +x /tmp/mine-entrypoint.sh; \
	mkdir -p /minecraft && mkdir -p /data

RUN apk update && apk add openjdk17-jre

WORKDIR /data
EXPOSE 25565
ENTRYPOINT [ "/tmp/mine-entrypoint.sh" ]
