#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%s)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

# colours---create a variables syntax:"\e[31m"
R="\e[31m"
G="\e[32m"
N="\e[0m"
echo "Script started executing at : $TIMESTAMP"

#create a function to aviod repeating code
VALIDATE(){
    #echo "exit status: $1"
    #echo "what are you doing : $2"
    if [ $1 -ne 0 ]
    then
    echo -e "$2......$R FAILURE $N" # -e to apply colours
    exit 1
    else
    echo -e "$2.......$G SUCCESS $N"
    fi

}

if [ $USERID -ne 0 ]
then
echo "Please run the script with root access"
exit 1
else
echo "super admin"
fi

dnf install mysql -y &>>$LOGFILE
# call the function
VALIDATE $? "Installation of mysql"

# if [ $? -ne 0 ]
# then
# echo "Installation of mysql.....FAILURE"
# exit 1
# else
# echo "Installation of mysql....SUCCESS"
# fi

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installation of git"  # $? -----$1, "Installation of git"-----$2 two variables are passing.

# if [ $? -ne 0 ]
# then
# echo "Installation of git......FAILURE"
# exit 1
# else
# echo "Installation of git.....SUCCESS"
# fi

# wrong script( for failure to check logs)
dnf install dockerrrrr -y &>>$LOGFILE
VALIDATE $? "Installation of dockerrrrr"

echo "script proceed?"



