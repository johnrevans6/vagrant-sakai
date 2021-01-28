#!/bin/bash
cd /vagrant/helpers
echo "==== INSTALLING JDK ===="
JDK=${1}
tar xzf ${JDK}.tar.gz --directory /usr/local/
mv /usr/local/jdk* /usr/local/jdk
JAVA_HOME="/usr/local/jdk"
echo "export JAVA_HOME=/usr/local/jdk" >> /home/vagrant/.profile
echo "export PATH=${PATH}:${JAVA_HOME}/bin" >> /home/vagrant/.profile
source /home/vagrant/.profile
echo "==== DONE! ===="