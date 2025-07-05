#!/bin/bash
echo " checking the list of installed packages"
dpkg -l apache2 &>/dev/null

if [$? -eq 0];then
	echo " Apache is already installed"
else
	echo " Apache is not installed "

#Attempting second installation
echo " Attempting to install Apache now "
sudo apt-get update &>/dev/null
sudo apt-get install apache2 -y &>/dev/null
if [$? -eq 0];then
	echo "Apache has been successfully installed "
else
	echo " Apache is not installed"
      fi

fi
 this is my sample code
