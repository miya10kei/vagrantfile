#!/usr/bin/env bash

# Node.js
echo "###################"
echo "# Install Node.js #"
echo "###################"

if [ -e $HOME/.nvm ]; then
  echo "Node.js is already installed."
else
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
  nvm install --lts
  nvm use --lts
  echo "Node.js install completed."
fi
