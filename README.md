# INF102 VM

## Introduction
This repository (vagrant) provides a configuration to boot up a VirtualBox VM with a development environment that you can use to work on the programming assignments for INF102. **NOTE**: This is a work in progress, and will be updated over the next week(s) based on student feedback.

## Installation

1. Make sure that you have [git](https://git-scm.com), [VirtualBox](https://www.virtualbox.org), and [Vagrant](https://www.vagrantup.com) installed.
	+ On mac os this can be done easily (if you have [homebrew](https://brew.sh) installed) using:
	 	+ `$ brew install git`
		+ `$ brew cask install virtualbox`
		+ `$ brew cask install vagrant`
2. Install Vagrant plugins to provide VirtualBox guest additions, and synchronize time between your VM guest and host:
	+ `vagrant plugin install vagrant-vbguest`
	+ `vagrant plugin install vagrant-timezone`
3. Clone this project into the directory that you will be using for development:
	+ `git clone https://github.com/uci-inf102-s18/vagrant-vm`

4. Make sure that you have at least 16GB of free storage to deploy new VM with the development environment.

## Deployment

1. Modify `Vagrantfile` to your liking. Specifically, you may consider increasing/decreasing the number of cores and the available memory.

2. From inside the cloned directory boot up the Vagrant box. This will initiate VM deployment and provisioning. Depending on the speed of your Internet connection, and your host machine, the first bootup may take anywhere between 15min to 2h (subsequent bootups, if necessary, will be very fast). You will be able to trace deployment
progress in the terminal, and you should see active VirtualBox window:
	+ ```vagrant up```

3. Once deployment is done. You can ssh into your vm using:
	+ ```vagrant ssh```

## Usage

Once the machine is up you can use all Vagrant supported functionality. Specifically:

+ ```vagrant ssh``` will log you to the VM.
+ ```vagrant suspend``` will suspend the VM.
+ ```vagrant resume``` will resume the suspended VM.
+ ```vagrant provision``` will rerun bootstrap.sh within the VM (recommended only after major updates to this repository).

Below are several details regarding the VM environment:
+ The default VM user is **vagrant** with password **vagrant**. *This is the user you should use to login via GUI*.

+ Files in your working Vagrant directory (the one in which you booted up VM) are shared with the VM via /vagrant directory.

## Available Languages:
The following languages are preinstalled in the VM. If there is a language missing that you want to use, please open a [pull request](https://github.com/uci-inf102-s18/vagrant-vm/pulls) so we can add the language to the virtual machine.

+ python (3.5.2)
+ python (2.7.12)
+ ruby (2.3.1)
+ lua (5.2)
+ julia (0.4.5)
+ perl (5.22)
+ rust (1.22.1)
+ go (1.6.2)
+ go (1.10)
+ haskell (7.10.3)
+ kotlin (1.2.31)
+ java 8
+ c (gcc)
+ c++ (g++)
+ c# (mcs 4.2.1)
+ javascript (using Node (8.11.1))
+ erlang/OTP (20)
+ elixir (1.6.4)
+ scala (2.11.6)

## Credits
Credits for this readme go to [Jaroslaw Zola](https://gitlab.com/UBCSE250/vagrant/tree/master)
