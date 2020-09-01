# FROM ubuntu:18.04
FROM google/cloud-sdk:latest

WORKDIR /
RUN apt-get update \
    && apt-get install wget \
    && apt-get install -y software-properties-common
# && add-apt-repository --yes ppa:rpardini/adoptopenjdk \
# && apt-get update \
# #  \
# && apt-get install -y adoptopenjdk-11-jdk-hotspot-installer \
# && update-java-alternatives -s adoptopenjdk-11-jdk-hotspot
#  \
# && alternatives --install /usr/bin/java java adoptopenjdk-11-jdk-hotspot

RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
RUN add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb
RUN apt-get update
RUN apt-get install adoptopenjdk-11-hotspot
# RUM apt-get install -y software-properties-common
# sudo apt-get install <adoptopenjdk-8-hotspot>
