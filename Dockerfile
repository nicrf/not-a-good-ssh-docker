FROM alpine:latest

ENV TARGET_HOST=url.com \
    TARGET_PASSWORD=PASSWORD \
    TARGET_PORT=8080 \
    TARGET_USER=root \
    SOURCE_HOST=localhost \
    SOURCE_PORT=80 \
    KEEP_ALIVE_TIME=20000

COPY entrypoint.sh /

RUN apk update && apk add openssh-client bash sshpass

RUN chmod 0755 /entrypoint.sh

CMD ["/entrypoint.sh"]
