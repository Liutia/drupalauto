#!/bin/bash

echo "Write path to project directory"
read path
echo "Write project repository path"
read repo
echo "Write project directory name"
echo "Default repository name"
read name

cd $path
if $name
then echo "0"
else
echo "1"
cd drupalauto/
sh main_menu.sh