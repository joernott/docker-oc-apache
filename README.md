# Docker image: CentOS 7 with Apache 2.4 from IUS
This image starts Apache 2.4 from the IUS repository (2.4.37) using the
environment variables from /etc/sysconfig/httpd. Configuration files should be
mounted to /etc/httpd/conf.d. 


## Usage:
```
docker run -d -p 80:80 -p 443:443 \
    -v /srv/docker/apache/etc/httpd/conf.d/www.conf:/etc/httpd/conf.d/www.conf \
    -v /srv/docker/apache/var/www:/var/www \
    registry.ott-consult.de/oc/apache:latest
```
