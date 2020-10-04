#! /bin/bash

grep '/home/' passwd |		# Find real users
	sed 's/:.*//' |		# Remove everything after user name
		sort -u		# Sort the list


#cat passwd |		# Find all users
#	sed  's/:.*//' |		# Remove everything after user name
#		sort -u		# Sort the list

#cat passwd |		                # Find all users
#	sed  -n 's/:.*//' |		# Dont print pattern space. Remove everything after user name
#		sort -u		        # Sort the list
