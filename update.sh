#!/bin/bash
#########################################
# Update/Clean-up Script                #
# Author: Dyndrilliac (Matthew Boyette) #
# Date:   11/21/2012                    #
#########################################
# Clean up installed software and pull updates.
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get check
sudo apt-get -f install
sudo apt-get update
sudo apt-get dist-upgrade
# Purge packages no longer being used.
sudo dpkg -l | sudo grep '^rc' | sudo awk '{print $2}' | sudo xargs dpkg --purge
