#!/data/data/com.termux/files/usr/bin/bash

## Here is ~/.termux/boot/boot.sh
battery_status=$(termux-battery-status)
is_charging=$(echo $battery_status | grep -o '"status": "CHARGING"')

if [ -n "$is_charging" ]; then
    echo -e "Charging, running tor.\n"
    termux-wake-lock
    cp ~/.torrc_file/charging/torrc $PREFIX/etc/tor/torrc
    nohup tor &
else
    echo -e "Not charging.\n"
    exit
fi
