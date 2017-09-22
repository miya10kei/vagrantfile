#!/usr/bin/env bash

# Ruby
echo "################"
echo "# Install Ruby #"
echo "################"

ruby_version=`rbenv install -l | grep -v - | tail -1 | tr -d " "`
if [ -e ".rbenv/versions/$ruby_version" ]; then
  echo "Ruby is already installed."
else
  rbenv install -s $ruby_version
  rbenv rehash
  rbenv global $ruby_version
  echo "Ruby install completed."
fi
