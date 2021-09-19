#!/bin/sh

torip=$(wget -q -O - ipinfo.io/ip)

if [ "$(pgrep -l tor | grep -e '\stor$' | wc -l)" -gt 0 ]; then

        echo "%{F#00cc00}﨩  $torip %{u-}"

    else

        echo "%{F#cc0000}﨩"

    fi
