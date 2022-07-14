FROM alpine:latest

RUN set -x \
  && apk --update add \
    openssh-client \
    rsync \
  && rm -rf /var/lib/apt/lists/*

COPY --chown=root --chmod=644 ssh_config /etc/ssh/ssh_config
