#!/bin/bash
cd /vagrant/helpers
TOMCAT=${1}

tar xzf ${TOMCAT}.tar.gz --directory /opt
mv /opt/tomcat* /opt/tomcat
ln -nsf /opt/tomcat tomcat