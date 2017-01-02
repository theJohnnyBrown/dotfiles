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
xinput set-prop 10 271 -1 -1 -1
gsettings set org.gnome.desktop.interface gtk-key-theme "Emacs"
xinput set-prop 13 302 -114 -114
