FROM ubuntu:14.04

MAINTAINER German Schnyder <gschnyder@gmail.com>

ENV DEBIAN_FRONTEND noninteractive 
ENV SHELL /bin/bash

RUN apt-get update
RUN apt-get install -y libx11-6 libXft2 lib32z1 wget bc curl gawk sed pciutils uuid-dev \
	libncurses-dev build-essential libxext6 libice6 pkg-config libgtk2.0-0 \
	libext2fs2 libxml2 libfontconfig1 libXrender1 libsm6 libfreetype6 libglib2.0-0

RUN mkdir -p /usr/local/workingdir

WORKDIR /usr/local/workingdir

RUN wget http://ssb.stsci.edu/ssb_installer

RUN chmod +x ssb_installer

RUN printf "ssbrel\n\n" | ./ssb_installer
