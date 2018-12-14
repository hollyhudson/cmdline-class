#!/bin/bash

userlist="$1"

echo "It's working, it's just slow."
echo "Adding home directories for each user takes a minute."

while read line; do
	IFS=':' read -r -a array <<< "$line"
	echo "adding: ${array[0]}"
	useradd -m --shell /bin/bash ${array[0]}
done < "$userlist"

echo "Creating passwords for everyone..."
cat "$userlist" | chpasswd
echo "Done!"
