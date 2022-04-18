#!/bin/sh

#this close any instances of System Preferences that may be opened on the computer
killall "System Preferences"

# unlock the sysprefs before unlocking specific panes: 
security authorizationdb write system.preferences allow 

# unlock energysaver: 
security authorizationdb write system.preferences.energysaver allow

#this will open the energy settings on the computer after its unlocked them for the logged in standard user
open "/System/Library/PreferencePanes/EnergySaver.prefPane"
