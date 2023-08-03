FROM alpine:3.17

RUN apk update && apk add redis

COPY ./conf/redis.conf /etc/redis/redis.conf
RUN mkdir /data && chown redis:redis /data

EXPOSE 6379
ENTRYPOINT [ "redis-server", "/etc/redis/redis.conf" ]
