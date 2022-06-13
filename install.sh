#!/bin/bash

apt_update(){
	echo "Update system. Please wait."
	apt-get update > log.txt
}
utilit_install(){
	echo "Installation utils. Please wait."
	
	echo "Installation php. Please wait."
	apt-get -y install  ca-certificates apt-transport-https software-properties-common > log.txt
	add-apt-repository -y ppa:ondrej/php > log.txt
	
	echo "Installation docksal. Please wait."
	curl -o docksal.sh -fsSL https://get.docksal.io > log.txt
	sh docksal.sh > log.txt
	
	echo "Installation phpstorm. Please wait."
	snap install phpstorm --classic > log.txt
}

# update all packages
apt_update > log.txt
utilit_install > log.txt

echo "Drupal Auto installation is completed."
sleep 5
sh drupalauto_menu.sh
