FROM registry.ott-consult.de/oc/base
MAINTAINER Joern Ott <joern.ott@ott-consult.de>

ENV APACHE_VERSION=2.4.27-2.ius.centos7

COPY src /

RUN /tmp/install/oc-apache.sh

EXPOSE 80
EXPOSE 443

ENTRYPOINT /entrypoint
