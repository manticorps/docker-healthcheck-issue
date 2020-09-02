FROM alpine:latest

LABEL maintainer "info@swissdotnet.ch"

RUN addgroup -S osp \
    && adduser -S osp -h /osp -G osp \
    && chown osp:osp .

COPY --chown=osp:osp files/default-healthcheck.sh /osp/bin/
RUN chmod +x /osp/bin/default-healthcheck.sh

HEALTHCHECK --interval=1s --timeout=4s --start-period=30s --retries=5 CMD /osp/bin/default-healthcheck.sh || exit 1
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
ENTRYPOINT ["tail", "-f", "/dev/null"]