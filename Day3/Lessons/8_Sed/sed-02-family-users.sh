#! /bin/bash

sed  '/nologin/p' passwd #Prints the pattern space . Matched line will appear twice on the output
#sed -n '/nologin/p' passwd
