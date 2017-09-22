#!/usr/bin/env bash

# Node.js
echo "###################"
echo "# Install Node.js #"
echo "###################"

if [ -e .nvm ]; then
  echo "Node.js is already installed."
else
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  nvm install --lts
  nvm use --lts
  echo "Node.js install completed."
fi
