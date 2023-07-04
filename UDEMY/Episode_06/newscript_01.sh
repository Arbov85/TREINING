#!/bin/bash

directory=/etc

if [ -d $directory ]
then
   echo "The directory $directory exist!"
else
   echo "The directory $directory does not exist!"
fi

echo "The exit code for this script run is: $?"

