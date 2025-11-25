# Bluebird Fixes
Made for a Samsung Chromebook 4 running custom MrChromebox firmware but should be adaptable to other devices

Tested with Arch Linux (ftw) but should work on any distro with udev and other basic utilities

#### Prerequisites for everything listed here (aside from udev, bash, and other basics):
- evtest
- brightnessctl

## To fix function keys not mapping properly:

1. Find event of keyboard
2. Replace the 'evdev:input:' in '90-keyboard-remap.hwdb' with the output from 'cat /sys/class/input/eventX/device/modalias'
3. Verify scancodes for function keys are correct with 'evtest' utility
4. Copy '90-keyboard-remap.hwdb' to '/etc/udev/hwdb.d/'
5. Run 'systemd-hwdb update' and 'udevadm trigger' as root
6. Verify updated keycodes with 'evtest' utility

## Easy non-root sudouser mounting from the command line

Just use the provided '2mount.sh' and '2umount.sh' bash scripts

- 2mount.sh <DEVICE> <MOUNT_POINT>
- 2umount.sh <DEVICE | MOUNT_POINT>

## Changing backlight / screen brightness from command line

The 'backlight.sh' script is a wrapper around brightnessctl that allows easy setting of brightness

- backlight.sh <BRIGHTNESS PERCENTAGE>
