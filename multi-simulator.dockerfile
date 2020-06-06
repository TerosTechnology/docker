FROM ghdl/vunit:llvm

MAINTAINER Carlos Alberto, Ismael Perez, Alfredo Enrique Saez

ENV HOME /home
WORKDIR /home

RUN apt-get update -qq \
 && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \
    apt-utils \
    gcc \
    g++ \
    git \
    iverilog \
    libgmp3-dev \
    libmpfr-dev \
    python3-dev \
    nodejs \
    npm \
    verilator \
    wget \
 && pip3 install wheel pytest \
 && pip3 install cocotb cocotb_test
