#!/usr/bin/env bash

# clean
echo "############"
echo "# cleaning #"
echo "############"

apt-get -y autoremove
apt-get -y autoclean
echo "cleaning completed."


