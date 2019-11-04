FROM ubuntu:18.04
MAINTAINER Adam Schwalm <adam.schwalm@starlab.io>

WORKDIR /src

RUN apt-get update
RUN apt-get install -y python3-pip rpm createrepo scdaemon nfs-common git
ADD requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt
