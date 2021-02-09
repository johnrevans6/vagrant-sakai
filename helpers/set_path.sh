#!/bin/bash
set -e
JAVA_HOME="/usr/local/jdk" >> /home/vagrant/.profile
MAVEN_HOME="/usr/local/maven" >> /home/vagrant/.profile
TOMCAT_HOME="/usr/local/bin/tomcat" 
echo "export JAVA_HOME=${JAVA_HOME}" >> /home/vagrant/.profile
echo "export MAVEN_HOME=${MAVEN_HOME}" >> /home/vagrant/.profile
echo "export PATH=${PATH}:${JAVA_HOME}/bin:${MAVEN_HOME}/bin:${TOMCAT}" >> /home/vagrant/.profile
source /home/vagrant/.profile