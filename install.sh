#!/bin/bash

apt_update(){
	echo "Update system. Please wait."
	apt-get update > /dev/null 2>&1
}
utilit_install(){
	echo "Installation utils. Please wait."
	if dpkg -s ca-certificates apt-transport-https software-properties-common > /dev/null 2>&1
	then echo "Php already installed."
	else
	echo "Installation php. Please wait."
	{
	apt-get -y install  ca-certificates apt-transport-https software-properties-common 
	add-apt-repository -y ppa:ondrej/php
	} > /dev/null 2>&1
	fi
	if fin > /dev/null 2>&1
	then echo "Docksal already installed."
	else
	echo "Installation docksal. Please wait."
	bash <(curl -fsSL https://get.docksal.io) > /dev/null 2>&1
	fi
	if snap info phpstorm > /dev/null 2>&1
	then echo "Phpstorm already installed."
	else
	echo "Installation phpstorm. Please wait."
	snap install phpstorm --classic > /dev/null 2>&1
	fi
}

# update all packages
apt_update
utilit_install

echo "Drupal Auto installation is completed."
clear
sh drupalauto_menu.sh
