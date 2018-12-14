#!/bin/bash

userlist="$1"

while read line; do
	IFS=':' read -r -a array <<< "$line"
	echo "Deleting: ${array[0]}"
	deluser --remove-home ${array[0]}
done < "$userlist"
