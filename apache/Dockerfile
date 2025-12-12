FROM debian:13

RUN apt update && apt install -y \
    apache2 \
    neovim \
    nano \
    man-db \
    less \
    curl \
    wget \
    iproute2 \
    traceroute \
    iputils-ping \
    bind9-dnsutils \
    plocate \
    lsof

EXPOSE 8888/TCP

COPY --chown=root:www-data --chmod=750 ./entrypoint.sh /apache/entrypoint.sh
# ENTRYPOINT [ "/usr/bin/bash", "-c", "/apache/entrypoint.sh" ]
ENTRYPOINT [ "/apache/entrypoint.sh" ]