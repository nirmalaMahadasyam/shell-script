#!/bin/bash

COURSE="Devops from Current script"   # variable

echo "Before calling Other scipt: $COURSE"
echo "PID of the Current script: $$"

 ./16-other-script.sh


echo "After calling Other Scipt: $COURSE"