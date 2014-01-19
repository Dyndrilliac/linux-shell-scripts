#!/bin/bash
#########################################
# Generates a Disk Space Report         #
# Author: Dyndrilliac (Matthew Boyette) #
# Date:   11/21/2012                    #
#########################################
function dskrep()
{
	# Get a look at overall disk usage.
	df -h --total
	echo ""
	echo "10 largest directories in size (MB):"
	echo ""
	# Output the 10 largest directories in size.
	du -hmxS / | sort -n | tail -10
}
# Prompt the user to either save the output of the program as a text file, or display it in the terminal.
while true; do
	read -p "Do you wish to save the output to a file? " yn
	echo ""
	case $yn in
		[Yy]* ) read -p 'Enter file path: ' file_path; dskrep > $file_path; break;;
		[Nn]* ) dskrep; echo ""; read -p "Press [Enter] to continue..."; exit;;
		* ) echo "Only yes/no answers will be accepted.";;
	esac
done
