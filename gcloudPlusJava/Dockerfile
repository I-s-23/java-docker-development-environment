FROM google/cloud-sdk:latest

WORKDIR /
RUN apt-get update \
    && apt-get install wget \
    && apt-get install -y software-properties-common
RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
RUN add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb
RUN apt-get update
RUN apt-get install adoptopenjdk-11-hotspot
