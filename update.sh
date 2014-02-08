#!/bin/bash
#########################################
# Update/Clean-up Script                #
# Author: Dyndrilliac (Matthew Boyette) #
# Date:   11/21/2012                    #
#########################################
# Make sure the user is running the script as root.
if [ "`id -u`" -ne 0 ]; then
	echo "This script must be run as root! Exiting..."
	exit 1
fi
# Clean up installed software and pull updates.
apt-get autoremove
apt-get autoclean
apt-get check
apt-get -f install
apt-get update
apt-get dist-upgrade
# Purge packages no longer being used.
dpkg -l | grep '^rc' | awk '{print $2}' | xargs dpkg --purge
