#!/bin/bash
# Script for easier mounting of devices as a user with sudo access

if [ "$#" -ne 1 ]; then
	echo "Invalid argument; rerun with only the device to be mounted or the mount point"
	exit
fi

sudo umount $1
