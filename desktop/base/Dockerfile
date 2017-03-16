FROM debian:jessie

MAINTAINER snowdream <yanghui1986527@gmail.com>


# Install dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get -qq update && \
    apt-get -qqy install --no-install-recommends \
       apt-utils \
       mate-desktop-environment-core \
         &&\
     rm -rf /var/lib/apt/lists/*
