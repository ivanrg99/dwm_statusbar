#!/bin/sh
#CODE: LYOKO

while :; do
	MEM="MEM: $(free -h | awk '/^Mem:/ {print $3 "/" $2}')"
	DATE="$(date +'%b %d/%m %H:%M')"
	SSID="$(hostname -i)"
	BAT="BAT: $(cat /sys/class/power_supply/BAT0/capacity)%"
    xsetroot -name "[$MEM] [$SSID] [$DATE] [$BAT]"

	sleep 10s
done
