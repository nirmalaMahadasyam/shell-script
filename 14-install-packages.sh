#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Please run the script with root access"
exit 1
else
echo "super admin"
fi

#echo "all the packages: $@"

for i in $@
do
echo "Packages to install: $i"
done