#!/bin/bash
set -e
cd /vagrant/helpers
TOMCAT=${1}

if [ ! -d /opt/tomcat ]; then
  tar xzf ${TOMCAT}.tar.gz --directory /opt
  mv /opt/apache-tomcat* /opt/tomcat
  cd /opt
  ln -nsf /opt/tomcat /usr/local/bin/tomcat
  chown -R vagrant:vagrant /usr/local/bin/tomcat
  rm -rf tomcat/webapps
fi