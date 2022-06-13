#!/bin/bash

apt_update(){
	echo "Update system. Please wait."
	apt-get update > /dev/null 2>&1
}
utilit_install(){
	echo "Installation utils. Please wait."
	
	echo "Installation php. Please wait."
	{
	apt-get -y install  ca-certificates apt-transport-https software-properties-common 
	add-apt-repository -y ppa:ondrej/php
	} > /dev/null 2>&1
	echo "Installation docksal. Please wait."
	{
	curl -o docksal.sh -fsSL https://get.docksal.io
	sh docksal.sh > log.txt
	} > /dev/null 2>&1
	echo "Installation phpstorm. Please wait."
	snap install phpstorm --classic > /dev/null 2>&1
}

# update all packages
apt_update > /dev/null 2>&1
utilit_install > /dev/null 2>&1

echo "Drupal Auto installation is completed."
sleep 5
sh drupalauto_menu.sh
