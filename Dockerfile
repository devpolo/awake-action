FROM alpine

RUN apk add curl

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]