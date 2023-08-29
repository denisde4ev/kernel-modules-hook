#!/bin/bash

for i in /usr/lib/modules/[0-9]*; do
	if [[ ${i##*/} = "$(uname -r)" ]] || pacman -Qo "${i}"; then continue; fi
	rsync -AHXal "${i}" /usr/lib/modules/.old/
	rm -rf "${i}"
done
