#!/bin/bash
set -e
set -x

source /tmp/install/functions.sh

add_repos IUS EPEL
install_software httpd24u-${APACHE_VERSION}
cleanup
