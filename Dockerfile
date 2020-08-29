FROM ubuntu:18.04
RUN apt-get update \
&& apt-get install -y software-properties-common \
&& add-apt-repository --yes ppa:rpardini/adoptopenjdk \
&& apt-get install -y adoptopenjdk-11-jdk-hotspot-installer \
&& update-java-alternatives -s adoptopenjdk-11-jdk-hotspot
