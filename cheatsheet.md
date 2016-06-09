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
clear 		# clear the screen (but not your history)
```

Manipulating files. __(Warning: when using **rm** always stop and
think before you hit enter.  There is no trash can on the command
line.  Once it's gone it's gone.  NEVER type rm -rf * inside the
root directory, or anywhere you care about, really)__

```bash
mv [currentName] [newName] 	# move file (rename)
cp [currentFile] [copyName]	# copy a file
cp [myDir/*] [otherDir/] 	# copy everything in myDir into otherDir
cp -r [dirName] [newName]	# make a duplicate of a directory
rm [fileName] 			# remove (delete) file
rm -rf [dirName]	 	# recursively remove a directory, w/out asking
touch [newFile] 		# create an empty file
mkdir [dirName] 		# create an empty directory
cat [file1] [file2] > [thatFile]		# put the contents of these into that
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
grep [searchTerm] [path] # search inside files, -i makes it case-insensitive
grep button * 	# which files in this directory contain the word button
grep [commonWord] [largeDir] | less # make it easier to read long output 
top -o cpu 		# list all processes, sorted by cpu load
ps aux 			# show me all my processes
ps aux | grep -i chrome # show me all my processes with Chrome in the name
ps aux | grep -i chrome | less # and then pipe it to less because too long
df -h 	# how much disk space is being used (human-readable units)
du -h 	# how big are our files?
```

Tasks:
```bash
open . 				# opens finder with the current dir in focus
open [fileName.jpg] # opens the image in preview, works with pdfs
kill [pid] 			# kill process with the process id [pid]
kill -9 [pid] 		# no really kill it
killall "Chrome" 	# kill all processes with Chrome in the name
shutdown
echo [whatever] 	# print whatever to stdout
echo [whatever] > [fileName] # print whatever into a file
say [whatever] 		# make your computer talk
```

Permissions.  For more on the numbering system, check out the wikipedia page on chmod:
```bash
chmod a+r [fileName]	# give everyone read permission
chmod a+x [fileName]	# give everyone execute permission
chmod a 777 			# give everyone all permissions
sudo [command]			# do the command as root (superuser/admin)
```

Administering remote sessions:
```bash
ssh -l [userName] [server] 	# logs you into a remote server
scp [server]:[filePath] . 	# securely copies a file from the server to your current dir.
scp roundcube.swcp.com:/Users/me/myFile . 	# for example
```

