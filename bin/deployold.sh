#!/bin/bash

echo "Write path to project directory"
read path
echo "Write project repository path"
read repo
echo "Write project directory name"
# echo "Default name - repository name"
read name
echo "Write path to db with db name"
read db_path

cd $path
git clone $repo $name > /dev/null 2>&1
cd $name

echo "Configuration site. Please wait"

fin up > /dev/null 2>&1

echo "Set composer version[1,2]"
read V
case $V in
  1) fin config set COMPOSER_DEFAULT_VERSION=1 > /dev/null 2>&1;;
  2) fin config set COMPOSER_DEFAULT_VERSION=2 > /dev/null 2>&1;;
  *) echo "Invalid version";;
esac

echo "Your composer version $V"

fin restart
fin composer install
bash ~/drupalauto/bin/addons.sh
fin db import $db_path
fin drush cr

if [ -z $web ]
then
cd sites/default/
else
cd web/sites/default/
fi

echo "if (file_exists($app_root . '/' . $site_path . '/settings.local.php')) {" >> settings.php
echo "include $app_root . '/' . $site_path . '/settings.local.php';" >> settings.php
echo "}" >> settings.php

wget -P . "https://github.com/Liutia/drupalauto/blob/main/bin/config/settings.local.php"
# } > /dev/null 2>&1

echo "Local site created."
pwd
break
