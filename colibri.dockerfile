FROM ubuntu:20.04

LABEL Mantainers="Carlos Alberto, Ismael Perez, Alfredo Enrique Saez"

ENV HOME /home
WORKDIR /home

RUN apt-get update -qq \
 && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \
    apt-utils \
    git \
    bzip2 \
    python3.9 \
    python3-pip \
    python3-dev \
    wget \
    curl \
    gnupg \
    npm \
 && pip3 install vunit_hdl
RUN curl -fsSL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN mkdir /app \
 && cd /app \
 && git clone https://github.com/TerosTechnology/colibri.git \
 && cd colibri \
 && npm install -g .
