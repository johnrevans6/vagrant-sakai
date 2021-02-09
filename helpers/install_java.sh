#!/bin/bash
set -e
cd /vagrant/helpers
echo "==== INSTALLING ORACLE-JDK ===="
JDK=${1}

if [ ! -d /usr/local/jdk ]; then
  tar xzf ${JDK}.tar.gz --directory /usr/local/
  mv /usr/local/jdk* /usr/local/jdk
fi
echo "==== DONE! ===="