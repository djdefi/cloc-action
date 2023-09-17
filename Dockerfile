FROM alpine:3.18

ENTRYPOINT ["/usr/bin/dumb-init", "--", "/entrypoint.sh"]

RUN apk add --no-cache --update cloc \
    dumb-init \
    git 

COPY entrypoint.sh /
