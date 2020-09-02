FROM alpine:latest

LABEL maintainer "info@swissdotnet.ch"

RUN addgroup -S osp \
    && adduser -S osp -h /osp -G osp \
    && chown osp:osp .

COPY --chown=osp:osp files/default-healthcheck.sh /osp/bin/
RUN chmod +x /osp/bin/default-healthcheck.sh

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
ENTRYPOINT ["tail", "-f", "/dev/null"]