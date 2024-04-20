#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%s)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

#create a function to aviod repeating code
VALIDATE(){
    #echo "exit status: $1"
    #echo "what are you doing : $2"
    if [ $1 -ne 0 ]
    then
    echo "$2......FAILURE"
    exit 1
    else
    echo "$2.......SUCCESS"
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

echo "script proceed?"



