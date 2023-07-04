#!/bin/bash

package=htop

sudo apt install $package >> package_install_result.log

if [ $? -eq 0 ]
then
   echo "The iinstalation of package was successful"
   echo "The new command is available here"
   which $package
else
   echo "$package faild to install" >> package_reulst_failure.log
fi



