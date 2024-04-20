#!/bin/bash

USERID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%s)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

# colours---create a variables syntax:"\e[31m"
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

echo "Script started executing at : $TIMESTAMP"


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
dnf list installed $i &>>$LOGFILE

 if [ $? -eq 0 ]
    then
    echo -e "$i...... Already exist.....$Y SKIPPING $N" # -e to apply colours
    exit 1
    else
    echo -e "$i.......neeed to install $G SUCCESS $N"
    dnf install $i -y &>>$LOGFILE
    VALIDATE $? "Installation of $i"
    fi
done