#!/bin/sh

state=$(/usr/sbin/ip a | grep wlan0 | grep state | awk '{print $9}')

case $state  in
	'UP'*)
		echo "%{F#00cc00}直 $(/usr/sbin/ip a | grep wlan0 | grep inet | awk '{print $2}' | sed 's/\/.*//g')%{u-}"
		;;
	'DOWN'*)
		echo "%{F#cc0000}直%{F#cc0000} DOWN"
		;;
	*)
		echo "?"
esac
