#!/bin/bash
#A simple tool to change file's permission. :)
clear
echo -e "\t\t\t\t --------------------"
echo -e "\t\t\t\t  Permission Changer"
echo -e "\t\t\t\t --------------------"
echo -e "\t\t\t\t\t     By Nihal"
echo
echo -e " Octal   Binary "
echo -e "----------------"
echo -e "         r w x"
echo -e "----------------"
echo -e " 0       0 0 0"
echo -e " 1       0 0 1"
echo -e " 2       0 1 0"
echo -e " 3       0 1 1"
echo -e " 4       1 0 0"
echo -e " 5       1 0 1"
echo -e " 6       1 1 0"
echo -e " 7       1 1 1"
echo
echo -e "*----------------*"
echo -e "| r --> Read     |"
echo -e "| w --> Write    |"
echo -e "| x --> Execute  |"
echo -e "*----------------*"
echo 
echo -e "*-----------*"
echo -e "| 0 --> OFF |"
echo -e "| 1 --> ON  |"
echo -e "*-----------*"
echo 
read -p "Enter the file name:- " file
if [ -e $file ]
then
echo "Current permission of $file file is:-"
ls -l $file | cut -d " " -f 1
echo
read -p "1)Enter octal number to set permission for file owner:- " user
read -p "2)Enter octal number to set permission for group:- " group
read -p "3)Enter octal number to set permission for other users:- " other
sudo chmod $user$group$other $file
if [ "$?" -eq "0" ]
then
	echo -e "\nPermission successfully changed"
else
	echo -e " \nError while changing permission"
fi
echo 
echo "Current file permission of $file is:-"
ls -l $file | cut -d " " -f 1
else
	echo "File doesn't exist"
fi
read -p "Press Enter to exit"
