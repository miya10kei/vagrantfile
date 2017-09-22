#!/usr/bin/env bash

# Ubuntu
echo "#################"
echo "# Update Ubuntu #"
echo "#################"
apt-get update
apt-get -y dist-upgrade
echo "Ubuntu update completed."
