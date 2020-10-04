#! /bin/bash -

# Process arguments using a for loop

echo Processing $# arguments

count=1
for i	# default is for i in "$@"
do
	# In a real script, do something with "$i"
	printf "\tArgument %d: '%s'\n" "$count" "$i"

	let "count = count + 1"
done
