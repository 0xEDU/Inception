FROM alpine:3.17

COPY ./tools/mine-entrypoint.sh /tmp/mine-entrypoint.sh
RUN chmod +x /tmp/mine-entrypoint.sh; \
	mkdir -p /minecraft
COPY ./conf/ ./minecraft

RUN apk update && apk add --no-cache openjdk17-jre

WORKDIR /minecraft
EXPOSE 25565
ENTRYPOINT [ "/tmp/mine-entrypoint.sh" ]
