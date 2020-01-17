FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install --yes wget
RUN apt-get install --yes ssh
RUN apt-get update
RUN apt-get install --yes openmpi-bin libopenmpi-dev
COPY run.sh /root/run.sh
RUN /root/run.sh