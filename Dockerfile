FROM rethinkdb:2.3.6

RUN apt-get update \
  && apt-get install -y --no-install-recommends python-pip python2.7 python2.7-minimal python-pkg-resources \
  && pip install rethinkdb \
  && apt-get remove -y python-pip \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/*

CMD ["rethinkdb"]
