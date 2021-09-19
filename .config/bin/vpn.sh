#!/bin/bash

state=$(/usr/sbin/ip a | grep tun0 | grep inet | wc -l)


case $state in
	1*)
		echo "%{F#00cc00} $(/usr/sbin/ip a | grep tun0 | grep inet | awk '{print $2}' | sed 's/\/.*//g')%{u-}"
	;;

	0*)
		echo "%{F#cc0000}"
	;;

	*)
		echo "?"
	;;
esac
