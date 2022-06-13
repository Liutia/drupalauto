#!/bin/bash

cd
rm -rf drupalauto/
git clone https://github.com/Liutia/drupalauto.git &> /dev/null

cd drupalauto/
sh install.sh &> /dev/null
