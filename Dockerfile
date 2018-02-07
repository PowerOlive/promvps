FROM busybox

ENV URL https://github.com/nltk/nltk_data/archive/gh-pages.zip

RUN mkdir -p /tmp/docker-get && \
  cd /tmp/docker-get && \
  wget "$URL"

CMD ["/bin/sh", "-c", "cp /tmp/docker-get/* /data"]
