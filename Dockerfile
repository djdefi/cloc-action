FROM alpine:3.12.0

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/entrypoint.sh"]

RUN apk add --no-cache --update cloc \
    dumb-init \
    git 
    
COPY entrypoint.sh /
