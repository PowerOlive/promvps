FROM busybox

ENV URL https://dl.google.com/go/go1.9.3.src.tar.gz

RUN mkdir -p /tmp/docker-get && \
  cd /tmp/docker-get && \
  wget "$URL"

CMD ["/bin/sh", "-c", "cp /tmp/docker-get/* /data"]
