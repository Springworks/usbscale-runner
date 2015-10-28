#!/bin/sh

TARGET_FILE="/home/pi/scale/scale-result.txt"
FILE_OWNER="pi"

# Create file as correct user
sudo -u ${FILE_OWNER} touch ${TARGET_FILE}

while true
do
	echo "Read value of USB scale..."

	# Read scale result and write change to file
	RESULT="$(/home/pi/scale/usbscale/usbscale)"
	echo ${RESULT} > ${TARGET_FILE}
	echo "Current weight: ${RESULT}"
done
