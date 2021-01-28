#!/bin/bash
echo "==== UPDATING PACKAGES ===="
apt-get upgrade -y -q
apt-get update -y -q
echo "==== DONE! ===="