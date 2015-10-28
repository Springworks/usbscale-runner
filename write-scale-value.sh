#!/bin/sh

TARGET_FILE=${USBSCALE_RUNNER_TARGET_FILE}
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
