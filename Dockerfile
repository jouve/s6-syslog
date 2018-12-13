FROM alpine:3.8

RUN set -ex; \
    apk add --no-cache s6-networking==2.3.0.2-r2

CMD ["s6-tcpserver4-socketbinder", "-m", "-b", "0", "0.0.0.0", "514", "s6-setuidgid", "nobody", "fdblock", "0", "ucspilogd"]
