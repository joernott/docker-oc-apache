FROM registry.ott-consult.de/oc/base
LABEL MAINTAINER="joern.ott@ott-consult.de"

ENV APACHE_VERSION=2.4.41-1.ius.centos7 \
    GIT_COMMIT="x" \
    IMAGE_HISTORY="x"

COPY src /

RUN /tmp/install/oc-apache.sh

EXPOSE 80
EXPOSE 443

ENTRYPOINT /entrypoint
