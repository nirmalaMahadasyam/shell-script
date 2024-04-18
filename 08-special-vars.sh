#!/bin/bash

echo "All the variables passing through cmd: $@"

echo "Number of variables passing: $#"

echo "Script Name: $0"

echo "Current working directory: $PWD"

echo "Home Directory of the current user: $HOME"

echo "which User is running this script: $USER"

echo "Hostname or server name: $HOSTNAME"

echo "process ID of Current shell script: $$"

sleep 60  #it will sleep for 1 min after that it terminate automatically. & is used for which pid run in background
#ps -ef | grep sleep

echo "Process ID of Lastbackground command: $!"


