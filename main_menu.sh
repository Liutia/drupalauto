#!/bin/bash

echo "  "
echo "  Select the operation"
echo "  1) Create new project"
echo "  2) Deploy an existing project"
echo "  3) Display a list of projects"
echo "  4) Exit" 
echo "  "
cd 
read n
case $n in
  1) bash drupalauto/bin/newproject.sh;;
  2) bash drupalauto/bin/deployold.sh;;
  3) fin pl -a ; bash drupalauto/main_menu.sh ;;
  4) break;;
  *) echo "invalid option";;
esac
