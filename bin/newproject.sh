#!/bin/bash

echo "Write path to project directory"
read path
cd $path
fin p create

bash ~/drupalauto/bin/addons.sh

echo "Local site created."
pwd
fin drush uli

cd
bash drupalauto/main_menu.sh
