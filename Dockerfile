FROM alpine:3.13.6

RUN apk --no-cache --update add bash git \
    && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
