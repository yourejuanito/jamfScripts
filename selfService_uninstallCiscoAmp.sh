#!/bin/sh

launchctl unload /Library/LaunchAgents/com.cisco.amp.agent.plist
#If this does not stop the menulet, click on it and select Quit AMP for Endpoints Connector.

launchctl unload /Library/LaunchDaemons/com.cisco.amp.daemon.plist

launchctl list com.cisco.amp.daemon
#This should yield the message: Could not find service.
launchctl unload /Library/LaunchDaemons/com.cisco.amp.updater.plist
launchct list com.cisco.amp.updater
#This should yield the message: Could not find service "com.cisco.amp.updater" in domain for system.

#For macOS versions 10.15 and older:
kextunload -b com.cisco.amp.fileop
#For macOS versions 10.15 and older:
kextunload -b com.cisco.amp.nke
#For macOS versions 10.15 and older:
sudo /usr/sbin/kextstat -l | grep com.cisco.amp
#This should yield an empty list.

#For macOS versions 10.15.5 and newer:
/Applications/Cisco\ AMP\ for\ Endpoints/AMP\ for\ Endpoints\ Service.app/Contents/MacOS/AMP\ for\ Endpoints\ Service deactivate endpoint_security
#Enter password when prompted.
#For macOS versions 10.15.5 and newer:
/Applications/Cisco\ AMP\ for\ Endpoints/AMP\ for\ Endpoints\ Service.app/Contents/MacOS/AMP\ for\ Endpoints\ Service deactivate content_filter
#Enter password when prompted.
#For macOS versions 10.15.5 and newer:
systemextensionsctl list | grep com.cisco.endpoint.svc
#All system extensions for com.cisco.endpoint.svc.networkextension and com.cisco.endpoint.svc.securityextension should be listed with "[terminated waiting to uninstall on reboot]."
#For macOS versions 10.15 and older:
rm -rf "/Applications/Cisco AMP for Endpoints"
#For macOS versions 10.15 and older:
rm -rf /Library/Extensions/ampfileop.kext
#For macOS versions 10.15 and older:
rm -rf /Library/Extensions/ampnetworkflow.kext
rm -rf "/Library/Application Support/Cisco/AMP for Endpoints Connector"#
rm -rf /opt/cisco/amp/
rm -f /Library/Logs/Cisco/amp*
rm -f /var/run/ampdaemon.pid
rm -f /Library/LaunchAgents/com.cisco.amp.agent.plist
rm -f /Library/LaunchDaemons/com.cisco.amp.daemon.plist
rm -f /Library/LaunchDaemons/com.cisco.amp.updater.plist
pkgutil --forget com.cisco.amp.agent
pkgutil --forget com.cisco.amp.daemon
pkgutil --forget com.cisco.amp.kextsigned
pkgutil --forget com.cisco.amp.kextunsigned
pkgutil --forget com.cisco.amp.support
pkgutil --forget com.sourcefire.amp.agent
pkgutil --forget com.sourcefire.amp.daemon
pkgutil --forget com.sourcefire.amp.kextsigned
pkgutil --forget com.sourcefire.amp.kextunsigned
pkgutil --forget com.sourcefire.amp.support
#For each user, remove the following directory if it exists:
rm -f ~/Library/Preferences/SourceFire-Inc.FireAMP-Mac.plist
#For each user, remove the following directory if it exists:
rm -f ~/Library/Preferences/Cisco-Inc.AMP-for-Endpoints-Connector.plist