FROM alpine:latest

ENV FR_DB_HOST=db \
    TARGET_PASSWORD=PASSWORD \
    TARGET_PORT=8080 \
    TARGET_USER=root \
    SOURCE_HOST=localhost \
    SOURCE_PORT=80

COPY entrypoint.sh /

RUN apk update && apk add openssh-client bash sshpass

RUN chmod 0755 /entrypoint.sh

CMD ["/entrypoint.sh"]
