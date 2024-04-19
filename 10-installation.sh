#!/bin/bash

USERID=$(id -u) # to run the cmd inside shell script and take the output.i.e, output will holds in USERID

if[[ "$USERID" != 0 ]]; then
    echo "Please run this script as root access."
    exit 1 # manually exit if error comes
else
    echo "you are Super User."
fi

dnf install mysql -y

if[ $? -ne 0 ]
then
    echo "Installation of mysql....FAILURE"
    exit 1
else
     echo "Installation of mysql is SUCCESS"
fi

# 2nd installation code

dnf install git -y

if[ $? -ne 0 ]
then
     echo "Installation of git....FAILURE"
     exit 1
else
     echo "Installation of git is SUCCESS"
fi

#echo "Is Script Proceding?"

