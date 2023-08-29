#!/bin/sh

KVER="${KVER:-$(uname -r)}"

if [ -e /usr/lib/modules/backup/"${KVER}" ] && [ ! -e /usr/lib/modules/"${KVER}" ]; then
	cp -a \
		/usr/lib/modules/backup/"${KVER}" \
		/usr/lib/modules/"${KVER}"
	;
fi

rm -rf /usr/lib/modules/backup
