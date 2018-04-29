#!/usr/bin/env bash

apt-get update -y
apt-get upgrade -y
apt-get install -y build-essential

# # Install tools/environments
apt-get install -y git
apt-get install -y gdb valgrind
apt-get install -y snapd
apt-get install -y curl &> /dev/null

# Install Csharp, C(++)
sudo apt-get install -y mono-mcs 4.5
apt-get install -y gcc-5
apt-get install -y g++-5
apt-get install clang-5.0

# JVM languages (java/kotlin)
if which java >/dev/null; then
   	echo "skip java 8 installation"
else
	echo "java 8 installation"
	apt-get install --yes python-software-properties
	add-apt-repository ppa:webupd8team/java
	apt-get update -qq
	echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
	echo debconf shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections
	apt-get install --yes oracle-java8-installer
	yes "" | apt-get -f install
fi

snap install kotlin --classic
apt-get install -y scala 2.16

# Python
apt-get install -y python3.5
apt-get install -y python3-pip

apt-get install -y python2.7
apt-get install -y python-pip

# some other random languages
apt-get install -y golang-go 1.6.2
apt-get install -y rustc 1.22.1
apt-get install -y cargo 0.23
apt-get install -y ghc 7.10
apt-get install -y ghc-prof
apt-get install -y ghc-doc
apt-get install -y ruby2.3
apt-get install -y lua5.2
apt-get install -y julia 0.4.5
apt-get install -y perl 5.22

# Elixir
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
apt-get update -y
apt-get install -y esl-erlang
apt-get install -y elixir

