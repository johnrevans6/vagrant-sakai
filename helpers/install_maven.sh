#!/bin/bash
echo "==== INSTALLING MAVEN ===="
apt-get install maven -y -q
echo "export MAVEN_OPTS='-Xms512m -Xmx1024m'" >> /home/vagrant/.profile
source /home/vagrant/.profile
echo "==== DONE! ===="