#!/bin/bash -eux
#  -*- sh-basic-offset: 8; -*-
# shell does weird things when the file changes while it is running
# having the main code in a function with explicit exit and calling at the end with "$@"
# stops most weirdness
main() {
	# Bail early if not root
	if (( "$EUID" !=0 )); then
		echo "$0 must be run as root" >&2
		exit 1
	fi
	local basefs="${1:-/target}" fs basefsdev
	while read -r fs; do
		umount -lf "$fs"
	done < <(mount | tac |
		     awk -v basefs="$basefs" 'match($3, "^" basefs) && $5 != "zfs"{print $3}')
	basefsdev=$(mount |
			awk -v basefs="$basefs" 'match($3, "^" basefs) && $5 == "zfs"{print $1; exit}')
	if [ -n "$basefsdev" ]; then
		zpool destroy "${basefsdev%%/*}"
	fi
        exit 0
}
main "$@"
