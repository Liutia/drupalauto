#!/bin/bash

cd
if find . -type d -name "drupalauto" > /dev/null 2>&1
then
echo "  "
echo "  Select the option"
echo "  1) Update script"
echo "  2) Install/Update Utility"
echo "  3) Continue"
echo "  "
cd 
read n
echo "  "
case $n in
  1) rm -rf drupalauto/ > /dev/null 2>&1 ; git clone https://github.com/Liutia/drupalauto.git > /dev/null 2>&1 ; echo "Script updated";;
  2) bash drupalauto/install.sh;;
  3) bash drupalauto/drupalauto_menu.sh ;;
  *) echo "Invalid option";;
esac
else
rm -rf drupalauto/ > /dev/null 2>&1
git clone https://github.com/Liutia/drupalauto.git > /dev/null 2>&1
fi
bash drupalauto/drupalauto.sh
