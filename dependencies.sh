#!/usr/bin/env bash

apt-get update -y
apt-get upgrade -y
apt-get install -y build-essential

# Install tools/environments
apt-get install -y git

apt-get install -y gdb valgrind
apt-get install -y snapd
apt-get install -y curl

# nodejs
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
apt-get install -y nodejs-legacy
apt-get install -y nodejs
apt-get install npm

# Install Csharp, C(++)
apt-get install -y mono-mcs
apt-get install -y gcc
apt-get install -y g++

# JVM languages (java/kotlin)
apt-get install -y openjdk-9-jdk-headless
apt-get install -y openjdk-9-jre-headless
apt-get install openjfx
snap install kotlin

# Python
apt-get install python3
apt-get install -y python3-pip

apt-get install python2.7 
apt-get install python-pip

# some other random languages
apt-get install -y golang-go
apt-get install -y rustc cargo
apt-get install -y ghc ghc-prof ghc-doc
apt-get install -y ruby
apt-get install lua5.2
apt-get install -y julia
apt-get install -y perl
