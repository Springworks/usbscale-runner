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
	
	# Empty file and wait, since change isn't necessarily detected otherwise (!)
	> ${TARGET_FILE} ; sleep .1 ; echo ${RESULT} >> ${TARGET_FILE}
	echo "Current weight: ${RESULT}"
done
