#!/bin/sh

KVER="${KVER:-$(uname -r)}"

if [ -e /usr/lib/modules/"$KVER" ] && [ ! -e /usr/lib/modules/backup/"$KVER" ]; then
	[ -d /usr/lib/modules/backup ] || mkdir /usr/lib/modules/backup
	cp -a \
		/usr/lib/modules/"$KVER" \
		/usr/lib/modules/backup/"$KVER" \
	;
fi
