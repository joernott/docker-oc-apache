#!/bin/bash
set -e
set -x

curl -sSo /tmp/install/functions.sh https://raw.githubusercontent.com/joernott/docker-oc-install-library/master/install_functions.sh
source /tmp/install/functions.sh

add_repos IUS EPEL
install_software httpd24u-${APACHE_VERSION} httpd24u-mod_ssl-${APACHE_VERSION}
cleanup
