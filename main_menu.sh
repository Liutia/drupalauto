#!/bin/bash

echo "  Select the operation"
echo "  1) Create new project"
echo "  2) Deploy an existing project"
echo "  3) Display a list of projects"
echo "  4) Exit" 

read n
case $n in
  1) echo "You chose Option 1";;
  2) echo "You chose Option 2";;
  3) fin pl -a ; sh main_menu.sh ;;
  4) break;;
  *) echo "invalid option";;
esac
