FROM ubuntu:18.04

RUN apt-get update
# wget to download sample mpi program
RUN apt-get install --yes wget
# ssh which is required by openmpi. See: https://github.com/open-mpi/ompi/issues/3625#issuecomment-305402237
RUN apt-get install --yes ssh
# Run another update before installing openmpi-bin. This seems to be necessay but may be due to a correupted cached "docker run apt-get udpate"
RUN apt-get update
RUN apt-get install --yes openmpi-bin libopenmpi-dev
COPY run.sh /root/run.sh
# Run the hello world program
RUN /root/run.sh