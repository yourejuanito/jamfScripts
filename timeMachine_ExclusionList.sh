#!/bin/bash

#############
#
# This timemachine script has been created to run at enrollment in order to mitigate private files and applications migrating.
#
#############

# Exclude all System folders
tmutil addexclusion -p /Applications
tmutil addexclusion -p /Library
tmutil addexclusion -p /System

# Exclude any other users on the computer (Edit for your specifics)
tmutil addexclusion -p /Users/localadmin
tmutil addexclusion -p /Users/Shared
tmutil addexclusion -p /Users/template
tmutil addexclusion -p /Users/teacher
tmutil addexclusion -p /Users/student

# Exclude hidden root os folders
tmutil addexclusion -p /bin
tmutil addexclusion -p /cores
tmutil addexclusion -p /etc
tmutil addexclusion -p /Network
tmutil addexclusion -p /private
tmutil addexclusion -p /sbin
tmutil addexclusion -p /tmp
tmutil addexclusion -p /usr
tmutil addexclusion -p /var
tmutil addexclusion -p /opt

# Enable timemachine to start auto backing up
tmutil enable

exit 0