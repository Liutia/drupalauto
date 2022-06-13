#!/bin/bash

echo "Write path to project directory"
read path
cd $path
fin p create

{
fin config set --env=local XDEBUG_ENABLED=1
fin addon install pma
fin project start
} > /dev/null 2>&1

echo "Local site created."
pwd

cd
cd drupalauto/
bash main_menu.sh
