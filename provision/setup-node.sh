#!/usr/bin/env bash

# nodejs
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
echo "source ~/.nvm/nvm.sh" >> ~/.profile
source ~/.profile
nvm install 8.11.1 &> /dev/null
nvm use 8.11.1 
