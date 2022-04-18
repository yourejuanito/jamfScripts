/bin/launchctl unload /Library/LaunchAgents/com.cisco.amp.agent.plist
# If this does not stop the menulet, click on it and select Quit AMP for Endpoints Connector.
sudo /bin/launchctl unload /Library/LaunchDaemons/com.cisco.amp.daemon.plist
sudo /bin/launchctl list com.cisco.amp.daemon
# This should yield the message: Could not find service.
sudo /bin/launchctl unload /Library/LaunchDaemons/com.cisco.amp.updater.plist
sudo /bin/launchct list com.cisco.amp.updater
# This should yield the message: Could not find service "com.cisco.amp.updater" in domain for system.
# For macOS versions 10.15 and older:
sudo /sbin/kextunload -b com.cisco.amp.fileop
# For macOS versions 10.15 and older:
sudo /sbin/kextunload -b com.cisco.amp.nke
# For macOS versions 10.15 and older:
sudo /usr/sbin/kextstat -l | grep com.cisco.amp
# This should yield an empty list.
# For macOS versions 10.15.5 and newer:
/Applications/Cisco\ AMP\ for\ Endpoints/AMP\ for\ Endpoints\ Service.app/Contents/MacOS/AMP\ for\ Endpoints\ Service deactivate endpoint_security
# Enter password when prompted.
# For macOS versions 10.15.5 and newer:
/Applications/Cisco\ AMP\ for\ Endpoints/AMP\ for\ Endpoints\ Service.app/Contents/MacOS/AMP\ for\ Endpoints\ Service deactivate content_filter
# Enter password when prompted.
# For macOS versions 10.15.5 and newer:
systemextensionsctl list | grep com.cisco.endpoint.svc
# All system extensions for com.cisco.endpoint.svc.networkextension and com.cisco.endpoint.svc.securityextension should be listed with "[terminated waiting to uninstall on reboot]."
# For macOS versions 10.15 and older:
sudo rm -rf "/Applications/Cisco AMP for Endpoints"
# For macOS versions 10.15 and older:
sudo rm -rf /Library/Extensions/ampfileop.kext
# For macOS versions 10.15 and older:
sudo rm -rf /Library/Extensions/ampnetworkflow.kext
sudo rm -rf "/Library/Application Support/Cisco/AMP for Endpoints Connector"
sudo rm -rf /opt/cisco/amp/
sudo rm -f /Library/Logs/Cisco/amp*
sudo rm -f /var/run/ampdaemon.pid
sudo rm -f /Library/LaunchAgents/com.cisco.amp.agent.plist
sudo rm -f /Library/LaunchDaemons/com.cisco.amp.daemon.plist
sudo rm -f /Library/LaunchDaemons/com.cisco.amp.updater.plist
sudo pkgutil --forget com.cisco.amp.agent
sudo pkgutil --forget com.cisco.amp.daemon
sudo pkgutil --forget com.cisco.amp.kextsigned
sudo pkgutil --forget com.cisco.amp.kextunsigned
sudo pkgutil --forget com.cisco.amp.support
sudo pkgutil --forget com.sourcefire.amp.agent
sudo pkgutil --forget com.sourcefire.amp.daemon
sudo pkgutil --forget com.sourcefire.amp.kextsigned
sudo pkgutil --forget com.sourcefire.amp.kextunsigned
sudo pkgutil --forget com.sourcefire.amp.support
# For each user, remove the following directory if it exists:
rm -f ~/Library/Preferences/SourceFire-Inc.FireAMP-Mac.plist
# For each user, remove the following directory if it exists:
rm -f ~/Library/Preferences/Cisco-Inc.AMP-for-Endpoints-Connector.plist