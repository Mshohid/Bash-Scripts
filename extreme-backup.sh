#!/bin/bash

# This bash script is used to backupa a users home directory to /tmp/

user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%A).tar.gz

# This function total_files reports a total number of files for a given directory
function total_files {
	find $1 -type f | wc -l 
}

# This function total_directories reports a total number of files for a given directory
function total_directories {
	find $1 -type d | wc -l
}

# This function total reports all files and directories for a given directory 
function total {
	find $1 | wc -l 
}

tar -czvf $output $input 

echo -n "Files to be included:"
total_files $input 
echo -n "Directories to be included:"
total_directories $input
echo -n "Total files and directories."
total $input 

echo "Backup of $input completed!"
echo "Details about the output backup file:"
ls -l $output 
