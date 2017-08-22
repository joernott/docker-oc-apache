#!/bin/bash
set -e

docker build -t registry.ott-consult.de/oc/apache:latest .
docker push registry.ott-consult.de/oc/apache:latest
