FROM ubuntu:14.04
RUN apt-get -y update
RUN apt-get -y install make gcc
ADD . /tmp/tstools
RUN cd /tmp/tstools && make
RUN mv /tmp/tstools/bin/* /usr/local/bin
RUN rm -rf /tmp/tstools
