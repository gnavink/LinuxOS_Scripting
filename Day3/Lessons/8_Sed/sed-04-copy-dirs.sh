#! /bin/bash

user=$1
find "/home/$user" -type d -print 2> /dev/null |	# Get dir list
	sed "s;/home/$user;&-back;" |			# Change name
		sed 's/^/mkdir /'			# Insert mkdir command
