FROM docker:stable
LABEL maintainer "Lee Doughty"

RUN apk --no-cache --upgrade add \
          zip groff less python3 py-pip jq python3-dev libc-dev gcc \
          libffi-dev openssl-dev make abuild binutils rsync curl \
          nodejs-current nodejs-current-npm git openssh-client \
     && pip3 --no-cache-dir install --upgrade docker-compose awscli aws-sam-cli \
     && rm -rf /var/cache/apk/*
# Fix "WARNING: Connection pool is full, discarding connection: " red-herring
RUN sed -i 's/DEFAULT_POOLSIZE = 10/DEFAULT_POOLSIZE = 500/' /usr/lib/python3.8/site-packages/requests/adapters.py
