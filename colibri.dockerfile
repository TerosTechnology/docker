FROM ubuntu

LABEL Mantainers="Carlos Alberto, Ismael Perez, Alfredo Enrique Saez"

ENV HOME /home
WORKDIR /home

RUN apt-get update -qq \
 && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \
    apt-utils \
    git \
    bzip2 \
    python3.7 \
    python3-pip \
    python3-dev \
    nodejs \
    npm \
    wget \
 && pip3 install vunit_hdl
RUN npm install -g n \
 && n stable
RUN mkdir /app \
 && cd /app \
 && git clone https://github.com/TerosTechnology/colibri.git \
 && cd colibri \
 && npm install -g .
