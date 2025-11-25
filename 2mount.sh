#!/bin/bash
# Script for easier mounting of devices as a user with sudo access

if [ "$#" -ne 2 ]; then
	echo "Invalid arguments; rerun with only the device to be mounted and the mount point"
	exit
fi

sudo mount --options uid=1000 $1 $2
