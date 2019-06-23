
FROM ubuntu:16.04
LABEL maintainer="click2install"
LABEL version="1.0"

SHELL ["/bin/bash", "-c"]

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -y && \ 
  apt upgrade -y && \
  apt install -y software-properties-common && \
  apt-add-repository -y ppa:bitcoin/bitcoin && \
  apt update -y && \
  apt install -y \
  apt-utils \
  autoconf \
  automake \
  autotools-dev \
  bsdmainutils \
  build-essential \
  ca-certificates \
  git \
  libboost-system-dev \
  libboost-filesystem-dev \
  libboost-chrono-dev \
  libboost-program-options-dev \
  libboost-test-dev \
  libboost-thread-dev \
  libdb4.8-dev \
  libdb4.8++-dev \
  libdb5.3++ \
  libevent-dev \
  libminiupnpc-dev \
  libgmp3-dev \
  libqrencode-dev \
  libssl-dev \
  libzmq5 \
  nano \
  pkg-config \
  sudo \
  tar \
  wget && \
  apt-get autoremove -y && \
  rm -rf /var/lib/apt/lists/*