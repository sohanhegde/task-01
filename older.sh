#!/bin/bash

# file that contains file names
filenames='./filenames.txt'

# assume that oldest file is the firt one
oldest=$(sed 1'q;d' $filenames)

# read files from $filenames and loop
while read file; do
	echo "Comparing: $oldest <> $file"
	# if current file(in loop) is older than (-ot) the oldest file (we assumed it was first one)
	if [[ "$file" -ot "$oldest" ]]; then
		# then update $oldest variable
		oldest="$file"
	fi
done < "$filenames"

# finally print oldest variable
echo "Oldest file=$oldest"

exit 0
