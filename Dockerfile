FROM x11vnc/desktop

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        iputils-ping \
        wget \
        chromium-browser && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*