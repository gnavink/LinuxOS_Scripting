#! /bin/bash

trap 'rm -f $tmpfile $tmpfile2' EXIT

tmpfile=${TMPDIR:-/tmp}/myprog.$$

echo this is some data > $tmpfile

# Show contents. In a real script, do some real work.
ls -l $tmpfile
echo
cat $tmpfile

echo

# Show effects of umask
umask 077
tmpfile2=${TMPDIR:-/tmp}/myprog.$$.2
echo this is more data > $tmpfile2
ls -l $tmpfile2
echo
cat $tmpfile2

# Script exits here. Trap on EXIT cleans up.
