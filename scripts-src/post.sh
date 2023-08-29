#!/bin/sh

KVER="${KVER:-$(uname -r)}"

if test -e "/usr/lib/modules/backup/${KVER}"; then
	rsync -AHXal --ignore-existing \
		"/usr/lib/modules/backup/${KVER}" \
		/usr/lib/modules/
	;
fi

rm -rf /usr/lib/modules/backup
