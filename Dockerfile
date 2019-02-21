FROM buildpack-deps:bionic-curl

ENV LANG C.UTF-8

RUN apt-get update -y \
  && apt-get install -y --no-install-recommends \
  gosu nano \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/bin/bash"]