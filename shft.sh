#!/bin/bash
# shft: using 'shift' to step through all the positional parameters

#invoke with something like shift 3 4 a s b r

until [ -z "$1" ]
do
	echo -n "$1 "
	shift
done

echo 
#But, what happens to the used up parameters?
echo "$2"
exit
