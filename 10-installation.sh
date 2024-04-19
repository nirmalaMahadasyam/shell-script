#!/bin/bash

USERID=$(id -u)
if[ $USERID -ne 0 ]
echo " Please run the script with root access"
exit 1
else
echo "super admin"
fi


dnf install mysql -y

echo "script proceed?"



