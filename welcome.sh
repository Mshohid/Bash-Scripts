#!/bin/bash

greeting="Welcome"
user=$(whoami)
day=$(date +%A)

echo "$greeting back $user! Today is $day, which is the worst day of the entire week!" 
cowsay "Your Bash shell version is: $BASH_VERSION"

