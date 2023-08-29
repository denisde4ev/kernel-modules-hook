#!/bin/sh

KVER="${KVER:-$(uname -r)}"

if [ -e "/usr/lib/modules/${KVER}" ]; then
	cp -a \
		"/usr/lib/modules/${KVER}" \
		/usr/lib/modules/backup/ \
	;
fi
