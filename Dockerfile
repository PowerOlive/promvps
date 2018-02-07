FROM busybox

ENV URL https://dl.google.com/go/go1.9.3.src.tar.gz

RUN cd /tmp && \
  wget "$URL"

CMD ["/bin/cp", "/tmp/go1.9.3.src.tar.gz", "/data"]
