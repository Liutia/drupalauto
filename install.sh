#!/bin/bash

apt_update(){
	echo "Update system. Please wait."
	apt-get update &> /dev/null
}
utilit_install(){
	echo "Installation utils. Please wait."
	echo "Installation php. Please wait."
	{
	apt-get -y install  ca-certificates apt-transport-https software-properties-common
	add-apt-repository -y ppa:ondrej/php
	} &> /dev/null
	echo "Installation docksal. Please wait."
	}
	curl -o docksal.sh -fsSL https://get.docksal.io
	sh docksal.sh
	} &> /dev/null
	echo "Installation phpstorm. Please wait."
	snap install phpstorm --classic &> /dev/null
}

# update all packages
{
apt_update 
utilit_install
} &> /dev/null

echo "Drupal Auto installation is completed."
sleep 5
sh drupalauto_menu.sh
