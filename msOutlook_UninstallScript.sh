#!/bin/bash

####
#
# This script has been created in order to assist in the complete automated removal of Microsoft outlook on any system its has been ran on
# Script has been created by Juan Garcia
#
####

# this kills any process that is related to Microsoft outlook
killall "Microsoft Outlook"

# Deletes files related to Microsoft outlook that have been installed on the computer
rm -rf /Applications/Microsoft\ Outlook.app
rm -rf ~/Library/Application Support/com.microsoft.Outlook
rm -rf ~/Library/Containers/com.microsoft.Outlook
rm -rf ~/Library/Application Scripts/com.microsoft.Outlook
rm -rf ~/Library/Caches/com.microsoft.Outlook
rm -rf ~/Library/Preferences/com.microsoft.Outlook

#### WARNING: Outlook data will be removed when you move the three folders listed below.
#### You should back up these folders before you delete them.
rm -rf "/Users/$USERNAME/Library/Group Containers/UBF8T346G9.ms"
rm -rf "/Users/$USERNAME/Library/Group Containers/UBF8T346G9.Office"
rm -rf "/Users/$USERNAME/Library/Group Containers/UBF8T346G9.OfficeOsfWebHost"