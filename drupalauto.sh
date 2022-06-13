#!/bin/bash

cd
rm -rf drupalauto/ > /dev/null 2>&1
git clone https://github.com/Liutia/drupalauto.git > /dev/null 2>&1

cd drupalauto/
bash install.sh
