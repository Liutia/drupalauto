#!/usr/bin/sudo bash

apt_update(){
	echo "Update system. Please wait."
	apt-get update > /dev/null 2>&1
}
utilit_install(){
	echo "Installation utils. Please wait."
	{
	apt-get -y install  ca-certificates apt-transport-https software-properties-common 
	add-apt-repository -y ppa:ondrej/php
	bash <(curl -fsSL https://get.docksal.io)
	sudo snap install phpstorm --classic
	} > /dev/null 2>&1
}

# update all packages
apt_update
utilit_install

echo "Drupalauto utility installation is completed."
sleep 3
clear
bash drupalauto/drupalauto.sh
