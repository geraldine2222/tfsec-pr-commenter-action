FROM alpine:3.21.2

RUN apk --no-cache --update add bash git \
    && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
