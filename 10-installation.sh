#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Please run the script with root access"
exit 1
else
echo "super admin"
fi

dnf install mysql -y
if [ $? -ne 0 ]
then
echo "Installation of mysql.....FAILURE"
exit 1
else
echo "Installation of mysql....SUCCESS"
fi

echo "script proceed?"



