#!/bin/bash
if [ ! -f /.root_pw_set ]; then
	/set_root_pw.sh
fi

dbus-daemon --system --fork

exec /usr/sbin/sshd -D
