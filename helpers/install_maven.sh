#!/bin/bash
set -e
cd /vagrant/helpers
echo "==== INSTALLING MAVEN ===="
MVN=${1}

if [ ! -d /usr/local/maven ]; then
  tar xzf ${MVN}.tar.gz --directory /usr/local/
  mv /usr/local/apache-maven* /usr/local/maven
  echo "export MAVEN_OPTS='-Xms512m -Xmx1024m'" >> /home/vagrant/.profile
fi
echo "==== DONE! ===="