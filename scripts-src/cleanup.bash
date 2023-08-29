#!/bin/sh

for i in /usr/lib/modules/[0-9]*; do
	if [ ${i##*/} = "$(uname -r)" ] || pacman -Qo "$i" >/dev/null 2>&1; then continue; fi
	cp -a "$i" /usr/lib/modules/.old/
	rm -rf "$i"
done
