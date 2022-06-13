#!/bin/bash

cd
touch log.txt
rm -rf drupalauto/
git clone https://github.com/Liutia/drupalauto.git > log.txt

cd drupalauto/
mv ../log.txt .
sh install.sh
