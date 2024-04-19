#!/bin/bash

USERID=$((id -u)) # to run the cmd inside shell script and take the output.i.e, output will holds in USERID

echo "your userid is :: $USERID"

if[$USERID -eq 0]
then
echo "you are super admin"
exit 1
else
echo "your are normal user"
