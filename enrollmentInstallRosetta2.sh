#!/bin/bash
#
###################
#
# This script has been created to mitigate the issues that have arose from having the new apple M1 chip being
# deployed in any enviroment that still has/deployed non ARM applications. 
# if more information is required please visit the link below to the apple developer site which goes in to detail
# https://developer.apple.com/documentation/apple-silicon/about-the-rosetta-translation-environment
#
# created by Juan Garcia from the service desk July 2021
#
###################


# this part will install Rosetta 2 on the comptuers during the initial prestage script
arch=$(/usr/bin/arch)
if [ "$arch" == "arm64" ]; then
    echo "Apple Silicon - Installing Rosetta"
    /usr/sbin/softwareupdate --install-rosetta --agree-to-license
elif [ "$arch" == "i386" ]; then
    echo "Intel - Skipping Rosetta"
else
    echo "Unknown Architecture"
fi
