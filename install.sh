#!/bin/bash

# common subs
print(){
    msg=$1
    notice=${2:-0}
    [[ ( $SILENT -eq 0 ) && ( $notice -eq 1 ) ]] && echo -e "${msg}"
    [[ ( $SILENT -eq 0 ) && ( $notice -eq 2 ) ]] && echo -e "\e[1;31m${msg}\e[0m"
    echo "$(date +"%FT%H:%M:%S"): $$ : $msg" >> $LOG
}

apt_update(){
	print "Update system. Please wait." 1 1
	apt-get update
}
utilit_install(){
	print "Installation utils. Please wait." 1
	apt-get -y install  ca-certificates apt-transport-https software-properties-common
	add-apt-repository -y ppa:ondrej/php
	wget --no-check-certificate https://get.docksal.io
}

# update all packages
apt_update
utilit_install

print "Drupal Auto installation is completed." 1
sleep 5
drupalauto_menu.sh
