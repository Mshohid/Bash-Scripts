#!/bin/bash

 # This bash script is used to backup a user's home directory to /tmp/

 user=$(whoami)
 input=/home/$user
 output=/tmp/${user}_home_$(date +%A).tar.gz
 
 tar -czvf $output $input 
 echo "Backup of $input completed! Details about the output backup file:"
 ls -l $output 

