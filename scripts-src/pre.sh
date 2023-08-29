#!/bin/sh

KVER="${KVER:-$(uname -r)}"

if test -e "/usr/lib/modules/${KVER}"; then
	rsync -AHXal --delete-after \
		"/usr/lib/modules/${KVER}" \
		/usr/lib/modules/backup/ \
	;
fi
