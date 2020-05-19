FROM jenkinsci/blueocean
MAINTAINER nutan_sonale
USER root

RUN apk add python3-dev libffi-dev openssl-dev gcc libc-dev make && pip3 install docker-compose && docker-compose --version
