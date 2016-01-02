#!/bin/sh
### BEGIN INIT INFO
# Provides:          dev-setup-initmisc
# Required-Start:    $remote_fs
# Required-Stop:
# Should-Start:      $network
# Should-Stop:       $network
# X-Start-Before:    
# X-Stop-After:      udev
# Default-Start:     5
# Default-Stop:      
# Short-Description: Misc init stuff for dev-setup
# Description:       https://github.com/dhigginbotham/dev-setup
### END INIT INFO

do_start () {
  /usr/bin/setxkbmap -option 'ctrl:swapcaps'
}

case "$1" in
  start|"")
	do_start
	;;
  restart|reload|force-reload)
	echo "Error: argument '$1' not supported" >&2
	exit 3
	;;
  stop)
	# No-op
	;;
  *)
	echo "Usage: init-misc.sh [start|stop]" >&2
	exit 3
	;;
esac

:
