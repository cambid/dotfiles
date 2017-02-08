# -*- coding: utf-8 -*-

from i3pystatus import Status

status = Status(standalone=True)

# Displays clock like this:
# So 27 Dez 23:41:20
status.register("clock",
                format="%a %-d %b %X",)

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("load",
                format="{avg1}, {avg5}, {avg15}",
                critical_limit=3)

# Shows your CPU temperature, if you have a Intel CPU
status.register("temp",
                format="{temp:.0f}°C",)

status.register("solaar",
                nameOfDevice="M570")

# This would look like this:
# Discharging 6h:51m
status.register("battery",
                format="{status} {remaining:%E%hh:%Mm} {percentage:.2f}%",
                alert=True,
                alert_percentage=20,
                status={
                    "DIS":  "Discharging",
                    "CHR":  "Charging",
                    "FULL": "Bat full",
                    },
                )

# Displays whether a DHCP client is running
status.register("runwatch",
                name="DHCP",
                path="/var/run/dhcpcd-*.pid",
                )

# Shows the address and up/down state of eth0. If it is up the address is shown
# in green (the default value of color_up) and the CIDR-address is shown (i.e.
# 10.10.10.42/24).

# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)
#
# Note: the network module requires PyPI package netifaces-py3
status.register("network",
                interface="eth0",
                format_up="{v4cidr}",)

# Has all the options of the normal network and adds some wireless specific
# things like quality and network names.
#
# Note: requires both netifaces-py3 and basiciw

status.register("network",
                interface="wlan0",
                format_up="{essid} {quality:03.0f}% {v4cidr}",)

# Shows disk usage of /home
# Format:
# 42/128G [86G]
status.register("disk",
                path="/home",
                format="{used}/{total}G [{avail}G]",)

status.register("alsa",
                format="♪ {volume}",)

status.register("mem",
                format="Mem: {used_mem:.2f}/{total_mem:.2f}GB",
                divisor=1073741824,)

# Shows mpd status
# Format:
# Cloud connected▶Reroute to Remain
status.register("mpd",
                format="[{artist} {status} {title}] {filename}",
                status={
                    "pause": "▷",
                    "play": "▶",
                    "stop": "◾",
                },)

# shows spotify status
status.register("spotify",
                format="{artist} {status} {title}"
               )


status.run()
