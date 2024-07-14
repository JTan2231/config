#!/bin/bash
interface=$(iw dev | awk '$1=="Interface"{print $2}')
essid=$(iw dev "$interface" link | awk -F: '/SSID/ {print $2}')
decoded_essid=$(printf "%b" "$essid")
if [ -n "$decoded_essid" ]; then
    echo "$decoded_essid"
    echo "$decoded_essid"
    echo "#00FF00"
else
    echo "Disconnected"
    echo "Disconnected"
    echo "#FF0000"
fi

