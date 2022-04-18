#!/bin/bash


# This extension attribute has been created for the service desk and security team in order to quickly identify the Cisco AMP for 
# Endpoints Connector UUID associated to the Device that has the Cisco AMP deployed to it. 
# 
# Created by Juan Garcia - Team Technology Lead for TFC and Toronto Argos 
# Created on Tuesday Feb 15, 2022 

#Variable created that will capture UUID associated to Cisco AMP Connector
UUID=$(sed -n 's:.*<uuid>\(.*\)</uuid>.*:\1:p' "/Library/Application Support/Cisco/AMP for Endpoints Connector/local.xml")

#Jamf Helper utilized to create pop up Window that will display user/service desk agent the UUID associated to Cisco AMP Connector
/Library/Application\ Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper -windowType utility -icon "/Applications/Cisco AMP for Endpoints/AMP for Endpoints Connector.app/Contents/Resources/AppIcon.icns" -title "MLSE - Service Desk" -heading "Cisco AMP UUID" -description "${UUID}" -button1 "OK" -defaultButton 1

