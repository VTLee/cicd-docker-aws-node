FROM docker:stable-git
LABEL maintainer "Lee Doughty"

RUN apk --no-cache add \
          zip groff less python py-pip jq python-dev libc-dev gcc \
          libffi-dev openssl-dev make abuild binutils \
          nodejs-current nodejs-current-npm rsync \
     && apk add --no-cache --upgrade curl \
     && pip --no-cache-dir install docker-compose awscli aws-sam-cli \
     && rm -rf /var/cache/apk/*
