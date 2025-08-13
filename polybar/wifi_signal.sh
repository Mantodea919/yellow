#!/bin/bash

# Get Wi-Fi signal strength percentage using iwconfig
SIGNAL_LEVEL=$(grep "^\s*w" /proc/net/wireless | awk '{ print int($3 * 100 / 70) }')

# If signal level is empty, assume Wi-Fi is disconnected
if [ -z "$SIGNAL_LEVEL" ]; then
    ICON="\uf127"  # No signal icon (disconnected)
    echo -e "$ICON Disconnected"
    exit 0
fi

# Choose the appropriate icon based on signal strength percentage
if [[ $SIGNAL_LEVEL -ge 75 ]]; then
    ICON="\uf1eb"  # Wi-Fi full
elif [[ $SIGNAL_LEVEL -ge 50 ]]; then
    ICON="\uf1eb"  # Wi-Fi 75%
elif [[ $SIGNAL_LEVEL -ge 25 ]]; then
    ICON="\uf1eb"  # Wi-Fi 50%
else
    ICON="\uf127"  # Wi-Fi 25%
fi

# Output the icon and signal level
echo -e "$ICON  $SIGNAL_LEVEL%"

