#!/bin/bash

RAM_USAGE=$(free -m)
RAM_THRESHOLD=120
MESSAGE=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $3F}')
    FOLDER=$(echo $line | awk -F " " '{print $4F}')
    if [ $USAGE -ge $RAM_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $RAM_THRESHOLD, Current usage: $USAGE \n"
    fi
done <<< $RAM_USAGE

echo -e "Message: $MESSAGE"

echo "$MESSAGE" | mail -s "Ram Usage Alert" nirmsra@gmail.com

# echo "body" | mail -s "subject" to-address