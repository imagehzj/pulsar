FROM ttbb/base:jdk11

WORKDIR /opt/sh

ARG version=2.8.0
ARG download=2.8.0-bin

RUN wget -q https://archive.apache.org/dist/pulsar/pulsar-$version/apache-pulsar-$download.tar.gz  && \
mkdir -p /opt/sh/pulsar && \
tar -xf apache-pulsar-$download.tar.gz -C /opt/sh/pulsar --strip-components 1 && \
rm -rf apache-pulsar-$download.tar.gz

ENV PULSAR_HOME /opt/sh/pulsar

WORKDIR /opt/sh/pulsar