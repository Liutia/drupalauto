#!/bin/bash

cd /
if find * -type d -name "drupalauto" 
then
git clone https://github.com/Liutia/drupalauto.git
fi

cd drupalauto/

sh install.sh
