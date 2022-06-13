#!/bin/bash

apt_update(){
	print "Update system. Please wait." 1
	apt-get  update
}
utilit_install(){
	print "Installation utils. Please wait." 1
	apt-get -y install  ca-certificates apt-transport-https software-properties-common
  add-apt-repository ppa:ondrej/php
  curl -fsSL https://get.docksal.io
}

# update all packages
apt_update
utilit_install

print "Drupal Auto installation is completed." 1
sleep 5
drupalauto_menu.sh
