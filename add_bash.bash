#!/bin/bash

sum=0
total=0

if [ -n $1 ]
then	# exist arg

	for i in $@
	do
		let sum=$sum+$i
	done
else
	echo "Guidance : please, enter arguments"	 # no exist arg
	
fi

echo "Sum=$sum"
 
chmod u+x add
