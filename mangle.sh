#!/bin/bash
##############################################################
# Apply Mangling Rules to a Word List using John The Ripper  #
# Author: Dyndrilliac (Matthew Boyette)                      #
# Date:   11/21/2012                                         #
##############################################################
# Default for BackTrack 5 R3 is /pentest/passwords/john
read -p "Enter the path to the directory for John The Ripper: " path
read -p "Enter the path to the initial word list: " src
read -p "Enter the path to the resulting word list: " dst
$path/john --wordlist=$src --rules --stdout | $path/unique $dst
