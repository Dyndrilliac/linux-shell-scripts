#!/bin/bash
#########################################
# Update Script                         #
# Author: Dyndrilliac (Matthew Boyette) #
# Date:   11/21/2012                    #
#########################################
# Clean up installed software and pull all updates.
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get check
sudo apt-get -f install
sudo apt-get update
sudo apt-get dist-upgrade

