#!/usr/bin/env bash

# Ubuntu
echo "#################"
echo "# Update Ubuntu #"
echo "#################"
apt-get update
apt-get -y dist-upgrade
timedatectl set-timezone Asia/Tokyo
echo "Ubuntu update completed."
