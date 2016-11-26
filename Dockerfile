FROM ubuntu:14.04
MAINTAINER Daniel Parnell <dparnell@sentientscience.com>

RUN apt-get update && \
    apt-get install -y \
      apt-transport-https \
      build-essential \
      ca-certificates \
      curl \
      inotify-tools \
      htop \
      liblzma-dev \
      liblzo2-dev \
      p7zip-full \
      python-lzma \
      tmux \
      unzip \
      vim \
      wget \
      zlib1g-dev

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN mkdir /firmwares
VOLUME /firmwares

RUN mkdir -p /install/binwalk && \
    cd /install/binwalk && \
    wget https://github.com/devttys0/binwalk/archive/master.zip && \
    unzip master.zip && \
    cd binwalk-master && \
    python setup.py install && \
    ./deps.sh --yes

CMD /bin/bash
