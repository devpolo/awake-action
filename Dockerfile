FROM alpine

RUN apk --no-cache add ca-certificates
RUN apk --no-cache add curl

ADD entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]