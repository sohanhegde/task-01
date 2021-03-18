#!/bin/bash

# minute number (0~60). sed removes 0 at the start (01 -> 1)
min=$(date +%M | sed 's/^0//')

echo "minute: $min"

# if min is greater or equal to 40 and less or equal to 60
if [[ $min -ge 40 ]] && [[ $min -le 60 ]]; then
	echo 2 times
	# alarm
	tput bel
	sleep 1
	tput bel
fi

#if min is greater or equal to 20 and less or equal to 40
if [[ $min -ge 20 ]] && [[ $min -le 40 ]]; then
	echo 1 times
	tput bel
fi

if [[ $min -ge 0 ]] && [[ $min -le 20 ]]; then
	echo 0 times
fi

exit 0
