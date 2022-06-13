#!/bin/bash

echo "Write path to project directory"
read path
echo "Write project repository path"
read repo
echo "Write project directory name"
# echo "Default name - repository name"
read name
echo "Write path to db"
read db_path

cd $path
git clone $repo $name > /dev/null 2>&1
cd $name

# if [ -z $name ]
# then

# else
# echo "1"
# fi
echo "Configuration site. Please wait"
{
fin up
fin composer install
fin config set --env=local XDEBUG_ENABLED=1
fin addon install pma
fin project start
fin db import $db_path
fin drush cr

if [ -z $web ]
then
cd sites/default/
else
cd web/sites/default/
fi

touch settings.php
echo "if (file_exists($app_root . '/' . $site_path . '/settings.local.php')) {" >> settings.php
echo "include $app_root . '/' . $site_path . '/settings.local.php';" >> settings.php
echo "}" >> settings.php

wget -P . "https://github.com/Liutia/drupalauto/blob/main/bin/config/settings.local.php"

} > /dev/null 2>&1

echo "Local site created."
pwd
break
