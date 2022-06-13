#!/bin/bash

cd /
rm -rf drupalauto/ 
git clone https://github.com/Liutia/drupalauto.git

cd drupalauto/

sh install.sh
