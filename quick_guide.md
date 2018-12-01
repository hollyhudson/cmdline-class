# Intro to the Command Line

## Filesystem Navigation

- `ls` - list files
- `file [fileName]` - show file type
- `less [fileName]` - a "pager" that shows contents of fileName (`q` to quit)
- `cd [directoryName]` - change directory to directoryName
- `cd` - with no arguments you'll go to your home directory
- `cd ..` - go back to the parent directory
- `pwd` - print working directory

If you lose your prompt, try `ctrl-c`.

## Manipulating Files

### Creating, Deleting, and Moving Files

- `cp [originalFileName] [copyFileName]` - copy (duplicate) a file
- `mv [oldFileName] [newFileName]` - move (rename) a file
- `rm [fileName]` - remove (delete) a file, use with caution
- `touch [fileName]` - make a new, empty file, or update the timestamp on an existing file
- `mkdir [newDirName]` - make a new, empty directory

- `cp -r [originalDir] [copyDir]` - copy (duplicate, recursively) a directory, if copyDir exists it will now contain the contents of both directories
- `mv [oldDir] [newDir]` - move (rename) a directory, if newDir exists oldDir will be placed inside newDir
- `rm -rf [dirName]` - remove a directory, recursively, force it, be VERY careful with this command

### File Redirection

- `cat [fileName]` - print contents of fileName to the screen (like less, but not as nice)
- `cat [thisFile] > [thatFile]` - overwrite thatFile with the contents of thisFile, unless "noclobber" is set
- `cat [thisFile] >> [thatFile]` - append the contents of thisFile to thatFile
- `echo "Here is some content" > [fileName]` - overwrite fileName with the content in quotes, unless "noclobber" is set
- `echo "Here is some content" >> [fileName]` - append what's in quotes to fileName
- `[command] > [fileName]` - send the output of the command to the file
- `ls > [fileName]` - fileName now contains a list of files

- `source [thisFile]` - execute commands in thisFile in this shell, useful for loading your bash config file

- `nano`
- `vi`

### Permissions

- `chmod a+r [fileName]` - give all users read permission
- `chmod a+rwx [fileName]` - give all users read, write, and execute permission
- `chmod a-x [fileName]` - remove execute permission for everyone
- `chown [user] [fileName]` - give ownership of fileName to user
- `chown frodo rings/the_one`

### Symlinks

- `ln -s`

## Getting Information

### About Commands

- `which`
- `man [command]` - show the manual page for the command (try man shutdown, for instance)
- `[command] --version`
- `[command] --help`
- `tldr [command]` - more beginner-friendly than `man`, but it doesn't come standard, you'll need to download and install it

### About Files

- `file [fileName]` - show file type
- `less [fileName]` - a "pager" that shows contents of fileName (`q` to quit)
- `find [dirName] -name ['kitten.png']` - find files recursively in dirName
- `find [dirName] -name '*.png'` - find all png images in dirName
- `grep [string] *` - show files in current directory that contain the string
- `grep -iR [string] [dirName]` - show files in dirName that contain the string, case-insensitive, recursively
- `grep [string] [dirName]` - show files in dirName that contain the word (or number or whatever)
- `grep ['string with spaces'] [dirName]` - show files in dirName that contain the phrase

### About Your Computer

- `top` - list all process with memory and cpu usage (like Activity Monitor on the Mac or Task Manager on Windows)
- `top -o cpu` - sort by cpu usage
- `ps aux` - list all currently running processes
- `ps aux | grep -i Chrome` - list all running processes with Chrome or chrome in the name
- `du -h [dirName]` - show sizes of all files in dirName with human-readable units (useful if you're trying to delete large files because you've run out of space)
- `df -h` - show an overview of filesystem space usage with human-readable units

### About the Network

- `ping`
- `traceroute`

### About Your Environment

- `jobs` - list all processes your user is currently running (see bg & fg)
- `history` - list previously run commands (what did I just do??)
- `echo "hello there!"` - print stuff to the screen
- `echo [$ENVIRONMENT_VARIABLE]` - print the value
- `echo $PATH` - prints the path bash uses to find commands for you

### About Other Things

- `date`
- `cal`
- `cal 1752` - what's up with Sept?

## Actions

### Installing Things

- `brew install [command]` - on mac
- `apt-get install [command]` - on Debian and Raspbian

- `apt-get install git` - for example

### Stopping Things

- `ctrl-z` stop, but don't kill, a process
- `bg` - run the process you just stopped in the background
- `fg` - bring a process in the background back to the foreground
- `kill [pid]` - tell the process to end.  If this doesn't work, use -9 flag
- `kill -9 [pid]` - tell the operating system to kill the process immediately
- `killall "Chrome"` - kill all processes with Chrome in the name
- `shutdown -h +10` - shutdown (halt) the computer in 10 minutes
- `shutdown -h now` - shutdown the computer now
- `shutdown -r now` - reboot the computer now
- `reboot` - Raspberry Pi only

- `clear` - clear the screen, does not clear your history

### Git

- `git clone [paste from github]` 
- `git pull` 
- `git status` 
- `git add [file1] [file2]` 
- `git commit -m "comment on what has changed with this commit"` 
- `git push` 

### Mac Only

- `say "some phrase"` - speaks the text
- `[command] | say` - speaks the output of the command
- `open [fileName]` - will open the file with the appropriate app, unzipping if necessary
- `open [path]` - will open the directory specified.  Try `open .` and `open /`

## Remote Administration

### Logging In and Out

- `ssh-keygen` - generate an rsa key to use when logging in to a remote machine.  It will be saved in `~/.ssh/` Remember your passphrase if you want to log in again
- `ssh [username]@[hostname]` example: `ssh holly@myDomain.com`
- `ssh [username]@[ipAddress]` example: `ssh holly@192.168.1.32`
- `ssh -l [username] [hostname]` example: `ssh -l holly myDomain.com`
- `passwd` - helps you reset your password, does not help you remember it
- `exit` - logout
- `~.[enter]` - to restore your prompt after logging out if ssh hangs

You can set nicknames for hosts in `/etc/hosts` if you're feeling brave.

### File Transfer

- `scp [from] [to]` - securely copy a file from one machine to another
- `scp [fileName] [server]:[destinationDir]` - from your local machine to the server
- `scp [server]:[filePath] [destinationDir]` - from the server to your local macine
- `scp [server]:[filePath] .` - from the server to your current directory
- `scp myFile 192.168.1.32:/home/holly/` - example, copy myFile to my home directory on a Raspberry Pi
- `scp myFile myServer.myDomain.com:/home/holly/` 

### Superuser

- `sudo [command]`

### Users and Groups

The following commands must be run as root or with `sudo`.

- `useradd -m [username] -p [password]` - add a user and assign them a password

The user can then log on and use the `passwd` command to change their password.

- `groupadd [groupname]` - add a group
- `usermod -a -G [groupname] [username]` - put a user in a group, (append the user to the group)

## Odds and Ends

Pipe `|` "pipes" the output of the first command into the second command.

`ls | less` - is useful for directories with so many files they scroll off the screen

- `!!` - bang-bang, run last command
- `[command] !! - run the command with the arguments of the last command
- `file /long/path/to/file/do/not/want/to/type/again` - shows file type of `again`
- `rm !!` - deletes the file `again` referenced in the previous command 
- `sudo !!` - run the last command as root (this one is so useful some people alias it to "oops" or more colorful words
- `![command]` - run the command [command] exactly as it was run the last time (for when you don't want to type all the arguments again)
