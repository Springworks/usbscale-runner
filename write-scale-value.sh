#!/bin/sh

TARGET_FILE="/home/pi/scale/scale-result.txt"

# Create file as correct user
su pi -c touch ${TARGET_FILE}

# Read scale result and write change to file
/home/pi/scale/usbscale/usbscale > /home/pi/scale/scale-result.txt
