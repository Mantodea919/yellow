#!/bin/bash

# Get battery information using acpi
BATTERY_INFO=$(acpi -b)

# Extract percentage from the output (removing the % sign)
PERCENTAGE=$(echo $BATTERY_INFO | grep -o '[0-9]*%')
PERCENTAGE_NUMBER=${PERCENTAGE%\%}  # Remove the percentage sign

# Get the status (Charging, Discharging, Full)
STATUS=$(echo $BATTERY_INFO | grep -o 'Charging\|Discharging\|Full')

# Choose the appropriate icon based on the status and percentage
if [[ $STATUS == "Charging" ]]; then
    ICON="\uf0e7"  # Charging icon
elif [[ $STATUS == "Full" ]]; then
    ICON="\uf240"  # Full battery icon
elif [[ $PERCENTAGE_NUMBER -ge 80 ]]; then
    ICON="\uf240"  # Battery Full
elif [[ $PERCENTAGE_NUMBER -ge 60 ]]; then
    ICON="\uf241"  # Battery 75%
elif [[ $PERCENTAGE_NUMBER -ge 40 ]]; then
    ICON="\uf242"  # Battery 50%
elif [[ $PERCENTAGE_NUMBER -ge 20 ]]; then
    ICON="\uf243"  # Battery 25%
elif [[ $STATUS = "" ]]; then
    ICON="\uf0e7" 
else
    ICON="\uf244"  # Battery Empty
fi

# Output the icon and percentage
echo -e "$ICON  $PERCENTAGE"

