FROM debian:stable-slim

RUN apt-get update && apt-get -y upgrade\
&&  apt-get -y install \
    dnsmasq \
&&  apt-get clean autoclean \
&&  apt-get -y autoremove \
&&  rm -rf /var/lib/{apt,dpkg,cache,log} \
&&  rm -rf /tmp/* /var/tmp/*