#!/usr/bin/env bash

# rbenv
echo "#################"
echo "# Install rbenv #"
echo "#################"

if [ -e .rbenv ]; then
  echo "rbenv is already installed."
else
  sudo apt-get install -y build-essential libssl-dev ruby-build
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  git clone https://github.com/sstephenson/ruby-build.git .rbenv/plugins/ruby-build
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> .bashrc
  echo "rbenv install completed."
fi
