#!/bin/bash
# This script has been created for uninstalling the macOS
# Privileges application that has been deployed to the Business
# Intelligenece, Digital Labs Team, and anyone approved the
# InfoSec/CyberSec Director.
# Script Created by - Juan Garcia November 29, 2019

rm -rf /Applications/Privileges.app
rm -rf /Applications/Privileges/Privileges.app
rm -rf /Library/PrivilegedHelperTools/corp.sap.privileges.helper
rm -rf /Library/LaunchDaemons/corp.sap.privileges.helper.plist
jamf recon

exit 0