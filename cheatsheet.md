Folders are called directories in Unix.
[Brackets indicate optional input.] Never type the brackets.

Note: You can always put a path in place of a fileName.  For example:
```bash
cp notes css/mynotes 	# make a copy of notes, put it in css, call it mynotes
```

Navigation:
```bash
cd [dirName] # change directory
cd ..		# go up a directory
cd ../js  	# go up a directory, then into the js directory
```

Manipulating files:
```bash
mv [currentName] [newName] 	# move file (rename)
cp [currentFile] [copyName]	# copy a file
cp [myDir/*] [otherDir/] 	# copy everything in myDir into otherDir
cp -r [dirName] [newName]	# make a duplicate of a directory
rm [fileName] 			# remove (delete) file
rm -rf [dirName]	 	# recursively remove a directory, w/out asking
touch [newFile] 		# create an empty file
cat [thisFile] > [thatFile]		# put the contents of this into that
cat [thisFile] >> [thatFile] 	# append the content of this to that
```
Getting info:
```bash
man [commandName] 	# how do I use this command?
ls -Flah 			# list EVERYTHING in the directory, with human-readable units
ls *.jpg 			# only show me jpegs
less [fileName] 	# cat the file to stdout (look inside the file w/out opening)
file [fileName] 	# find out what kind of file it is
pwd 			# print working directory (get your full path)
history 		# what have I been doing?
grep [searchTerm] [path] # search inside files
grep button * 	# which files in this directory contain the word button
grep [commonWord] [largeDir] | less # make it easier to read long output 
top -o cpu 		# list all processes, sorted by cpu load
ps aux 			# show me all my processes
ps aux | grep Chrome # show me all my processes with Chrome in the name
ps aux | grep Chrome | less # and then pipe it to less because too long
```

Tasks:
```bash
kill
shutdown
```

Permissions.  For more on the numbering system, check out the wikipedia page on chmod:
```bash
chmod a+r [fileName]	# give everyone read permission
chmod a+x [fileName]	# give everyone execute permission
chmod a 777 			# give everyone all permissions
```
