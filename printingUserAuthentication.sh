#!/bin/bash

for PRINTER in `lpstat -v | grep 'smb://' | awk '{print $3}' | tr -d :`
do
    lpadmin -p $PRINTER -o auth-info-required=negotiate
done





