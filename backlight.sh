#!/bin/bash
# Script for easily changing backlight brightness

if [ "$#" -ne 1 ]; then
	echo "Invalid argument: rerun with percentage of brightness to set screen to (1-100)"
	exit
fi

if [ "$1" -lt 1 ]; then
	exit
fi

if [ "$1" -gt 100 ]; then
	exit
fi

brightnessctl s $1%
