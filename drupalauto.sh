#!/bin/bash

cd
rm -rf drupalauto/ > /dev/null 2>&1
git clone https://github.com/Liutia/drupalauto.git > /dev/null 2>&1

cd drupalauto/
echo "Install Utility?[yes,no]"
echo "  "
read n
echo "  "

if [ $n = yes ]
then
bash install.sh
else
bash drupalauto_menu.sh
fi
