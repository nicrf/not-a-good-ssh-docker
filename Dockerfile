FROM alpine:latest

RUN apk update && apk add openssh-client bash sshpass

ENTRYPOINT ["/entrypoint.sh"]
CMD ["ssh"]
