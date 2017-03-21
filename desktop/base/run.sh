#!/bin/bash
if [ ! -f /.root_pw_set ]; then
	/set_root_pw.sh
fi

dbus-daemon --system --fork

service x2goserver start

exec /usr/sbin/sshd -D
