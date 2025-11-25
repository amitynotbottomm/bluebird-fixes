#!/bin/bash
# Simple script for printing battery charge

battery="/sys/class/power_supply/BAT0/"
charge=$(cat "$battery/capacity")
status=$(cat "$battery/status")

echo "Remaining battery: $charge% ($status)"
