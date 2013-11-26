#!/bin/bash
MY_PROMPT='fuzzy$ '
while :
	do
	echo -n "$MY_PROMPT"
	read line
	eval "LD_PRELOAD='./lib/strcpy.so ./lib/strcat.so' $line"
done
exit 0

