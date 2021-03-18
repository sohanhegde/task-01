#!/bin/bash

# $# is bash's built in, that holds number of parameters

# if $# is greater than (-gt) 0
if [ $# -gt 0 ]; then
	echo "This is funny"
else
	echo "This is NOT funny"
fi

exit 0
