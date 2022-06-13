#!/bin/bash

apt_update(){
	echo "Update system. Please wait."
	apt-get update > /dev/null 2>&1
}
utilit_install(){
	echo "Installation utils. Please wait."

	{
	apt-get -y install  ca-certificates apt-transport-https software-properties-common 
	add-apt-repository -y ppa:ondrej/php
	} > /dev/null 2>&1
	echo "30%"
	bash <(curl -fsSL https://get.docksal.io) > /dev/null 2>&1
	echo "60%"
	snap install phpstorm --classic > /dev/null 2>&1
	echo "100%"
}

# update all packages
apt_update
utilit_install

echo "Drupal Auto installation is completed."
sleep 3
clear
sh drupalauto_menu.sh
