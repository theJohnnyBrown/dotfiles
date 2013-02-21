#!/bin/sh
### BEGIN INIT INFO
# Provides:          natural_scroll
# Default-Start:     5
# Default-Stop:
# Required-Start:    $all
# Required-Stop:     $remote_fs $syslog
# Short-Description: Start daemon at boot time
# Description:       Enable service provided by daemon.
### END INIT INFO
xinput set-prop 12 "Synaptics Scrolling Distance" -235 -235
xinput set-prop 13 "Synaptics Scrolling Distance" -235 -23
xinput set-prop 14 "Synaptics Scrolling Distance" -235 -235
xinput set-prop 15 "Synaptics Scrolling Distance" -235 -235
touch /home/jb/Desktop/natscroll
nautilus -q
nautilus -n &
