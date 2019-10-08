FROM ubuntu:16.04

RUN apt-get update -y \
    && apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev libgmp-dev git wget curl net-tools \
    && apt-get clean

RUN apt-get install -y software-properties-common \
    && add-apt-repository -y ppa:bitcoin/bitcoin \
    && apt-get update -y \
    && apt-get install -y libdb4.8-dev libdb4.8++-dev libzmq3-dev

WORKDIR /tmp


