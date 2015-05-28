FROM ubuntu:14.04
MAINTAINER tsertkov <tsertkov@gmail.com>

ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get -y install \
    build-essential \
    golang \
    git \
    mercurial

VOLUME ["/build"]
VOLUME ["/src"]
WORKDIR /src
ENTRYPOINT /build/build.sh
