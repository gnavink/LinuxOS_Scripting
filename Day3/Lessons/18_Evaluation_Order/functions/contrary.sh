#! /bin/sh

today=$(date '+%A')
if [ "$today" = Saturday ]
then
	# feeling contrary

	echo () {
		printf "I don't wanna say '%s'!\n" "$*"
		return 1
	}
fi

echo Hello world
