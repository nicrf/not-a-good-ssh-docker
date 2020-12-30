FROM alpine:latest

RUN apk update && apk add openssh-client bash && add sshpass

ENTRYPOINT ["/entrypoint.sh"]
CMD ["ssh"]
