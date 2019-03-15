#!/bin/bash
#########################################
# Purge Unused Packages Script          #
# Author: Dyndrilliac (Matthew Boyette) #
# Date:   11/21/2012                    #
#########################################
# Purge packages no longer being used.
dpkg --list | grep "^rc" | cut -d " " -f 3 | xargs sudo dpkg --purge

