#!/bin/bash

echo "Write path to project directory"
read path
cd $path
fin p create
cd drupalauto/
sh main_menu.sh
