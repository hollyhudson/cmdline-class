# Intro to the Command Line

## Basic Structure of a Command

```
> command argument1 argument2 argument3[enter]
```

Arguments can be flags (settings for the command), filenames, paths, or strings.

If your filename has a **space**, it will be treated like two arguments.  To prevent this you have to "escape" the space with a backslash.  So if you want to run a command on a file called `cute kitten.jpg` you have to do:

```
> command cute\ kitten.jpg
```

If you want to pass a string that has spaces, you can enclose it in quotes:

```
> say hello
> say "hello world"
```

## Filesystem Navigation

<table>
<tr>
<td><tt>ls</tt></td>
<td>list files</td>
</tr>
<tr>
<td><tt>file <i>fileName</i></tt></td>
<td>show file type</td>
</tr>
<tr>
<td><tt>less <i>fileName</i></tt></td>
<td>a "pager" that shows contents of fileName (`q` to quit)</td>
</tr>
<tr>
<td><tt>cd <i>directoryName</i></tt></td>
<td>change directory to directoryName</td>
</tr>
<tr>
<td><tt>cd</tt></td>
<td>with no arguments you'll go to your home directory</td>
</tr>
<td><tt>cd ..</tt></td>
<td>go back to the parent directory</td>
</tr>
<tr>
<td><tt>cd -</tt></td>
<td>go back to where you were before you ran cd the last time</td>
</tr>
<tr>
<td><tt>pwd</tt></td>
<td>print working directory</td>
</tr>
</table>

If you lose your prompt, try `ctrl-c`.

## Manipulating Files

### Creating, Deleting, and Moving Files

<table>
<tr>
<td nowrap><tt>cp <i>original</i> <i>copy</i></tt></td>
<td>copy (duplicate) a file</td>
</tr>
<tr>
<td nowrap><tt>mv <i>oldFile</i> <i>newFile</i></tt></td>
<td>move (rename) a file</td>
</tr>
<tr>
<td><tt>rm <i>fileName</i></tt></td>
<td>remove (delete) a file, use with caution</td>
</tr>
<tr>
<td><tt>touch <i>fileName</i></tt></td>
<td>make a new, empty file, or update the timestamp on an existing file</td>
</tr>
<tr>
<td><tt>mkdir <i>newDirName</i></tt></td>
<td>make a new, empty directory</td>
</tr>
<tr>
<td nowrap><tt>cp -r <i>original</i> <i>copy</i></tt></td>
<td>copy (duplicate, recursively) a directory, if copyDir exists it will now contain the contents of both directories</td>
</tr>
<tr>
<td><tt>mv <i>oldDir</i> <i>newDir</i></tt></td>
<td>move (rename) a directory, if newDir exists oldDir will be placed inside newDir</td>
</tr>
<tr>
<td><tt>rm -rf <i>dirName</i></tt></td>
<td>remove a directory, recursively, force it, be VERY careful with this command</td>
</tr>
</table>

### File Redirection

<table>
<td><tt>cat <i>fileName</i></tt></td>
<td>print contents of fileName to the screen (like less, but not as nice)</td>
<td><tt>cat <i>thisFile</i> > <i>thatFile</i></tt></td>
<td>overwrite thatFile with the contents of thisFile, unless "noclobber" is set</td>
<td><tt>cat <i>thisFile</i> >> <i>thatFile</i></tt></td>
<td>append the contents of thisFile to thatFile</td>
<td><tt>echo "Here is some content" > <i>fileName</i></tt></td>
<td>overwrite fileName with the content in quotes, unless "noclobber" is set</td>
<td><tt>echo "Here is some content" >> <i>fileName</i></td>
<td>append what's in quotes to fileName</td>
<td><tt><i>command</i> > <i>fileName</i></tt></td>
<td>send the output of the command to the file</td>
<td><tt>ls > <i>fileName</i></tt></td>
<td>fileName now contains a list of files</td>
<td><tt>source <i>thisFile</i></tt></td>
<td>execute commands in thisFile in this shell, useful for loading your bash config file</td>
<td><tt>nano</tt></td>
<td><tt>vi</tt></td>
</table>

### Permissions

<table>
<td>chmod a+r <i>fileName</i></td>
<td>give all users read permission</td>
<td>chmod a+rwx <i>fileName</i></td>
<td>give all users read, write, and execute permission</td>
<td>chmod a-x <i>fileName</i></td>
<td>remove execute permission for everyone</td>
<td>chown <i>user</i> <i>fileName</i></td>
<td>give ownership of fileName to user</td>
<td>chown frodo rings/the_one</td>
</table>

### Symlinks

<table>
<td>ln -s <i>originalFile</i> <i>symlinkFile</i></td>
<td>create a file that is just a link to another file</td>
<td>ln -s ~/dotfiles/bashrc .bashrc</td>
<td>make your .bashrc a symlink to the file in your dotfiles directory</td>
</table>

## Getting Information

### About Commands

<table>
<td>ls -Flah</td>
<td>list all files with all the details (aka "long list")</td>
<td>which <i>command</i></td>
<td>shows you the path to the command, no output means either the command is not installed or it is not in your path</td>
<td>man <i>command</i></td>
<td>show the manual page for the command (try man shutdown, for instance)</td>
<td><i>command</i> --version`</td>
<td><i>command</i> --help`</td>
<td>tldr <i>command</i></td>
<td>more beginner-friendly than `man`, but it doesn't come standard, you'll need to download and install it</td>
</table>

### About Files

<table>
<td>file <i>fileName</i></td>
<td>show file type</td>
<td>less <i>fileName</i></td>
<td>a "pager" that shows contents of fileName (`q` to quit)</td>
<td>find <i>dirName</i> -name <i>'kitten.png'</i></td>
<td>find files recursively in dirName</td>
<td>find <i>dirName</i> -name '*.png'</td>
<td>find all png images in dirName</td>
<td>grep <i>string</i> *</td>
<td>show files in current directory that contain the string</td>
<td>grep -iR <i>string</i> <i>dirName</i></td>
<td>show files in dirName that contain the string, case-insensitive, recursively</td>
<td>grep <i>string</i> <i>dirName</i></td>
<td>show files in dirName that contain the word (or number or whatever)</td>
<td>grep <i>'string with spaces'</i> <i>dirName</i></td>
<td>show files in dirName that contain the phrase</td>
</table>

### About Your Computer

<table>
<td>uname -a</td>
<td>print (all) information about the computer</td>
<td>top</td>
<td>list all process with memory and cpu usage (like Activity Monitor on the Mac or Task Manager on Windows)</td>
<td>top -o cpu</td>
<td>sort by cpu usage</td>
<td>ps aux</td>
<td>list all currently running processes</td>
<td>ps aux | grep -i Chrome</td>
<td>list all running processes with Chrome or chrome in the name</td>
<td>du -h <i>dirName</i></td>
<td>show sizes of all files in dirName with human-readable units (useful if you're trying to delete large files because you've run out of space)</td>
<td>df -h</td>
<td>show an overview of filesystem space usage with human-readable units</td>
</table>

### About the Network

<table>
<td>ping <i>url</i></td>
<td>see if a server or site it up, will also report connection quality</td>
<td>traceroute <i>url</i></td>
<td>report the path from your computer to the site or server</td>
</table>

### About Your Environment

<table>
<td>jobs</td>
<td>list all processes your user is currently running (see bg & fg)</td>
<td>history</td>
<td>list previously run commands (what did I just do??)</td>
<td>echo "hello there!"</td>
<td>print stuff to the screen</td>
<td>echo <i>$ENVIRONMENT_VARIABLE</i></td>
<td>print the value</td>
<td>echo $PATH</td>
<td>prints the path bash uses to find commands for you</td>
</table>

### About Other Things

<table>
<td>date`</td>
<td>cal`</td>
<td>cal 1752</td>
<td>what's up with Sept?</td>
</table>

## Actions

### Installing Things

<table>
<td>brew install <i>command</i></td>
<td>on mac</td>
<td>apt-get install <i>command</i></td>
<td>on Debian and Raspbian</td>
<td>apt-get install git</td>
<td>for example</td>
</table>

### Stopping Things

<table>
<td>ctrl-z</td>
<td>suspend the process that's in the foreground (put it to sleep 💤)</td>
<td>ctrl-c</td>
<td>kill the process that's in the foreground</td>
<td>ctrl-d</td>
<td>send an "end of file".  Last thing to try when you can't exit a program.  If you type it when nothing is running it will log you out.</td>
<td>bg</td>
<td>run the process you just stopped in the background</td>
<td>fg</td>
<td>bring a process in the background back to the foreground</td>
<td>jobs</td>
<td>list all the suspended commands</td>
<td>fg %2</td>
<td>bring suspended job number 2 back to the foreground</td>
<td>kill %1</td>
<td>kill the suspended job number 1</td>
<td>kill <i>pid</i></td>
<td>tell the process to end.  If this doesn't work, use -9 flag</td>
<td>kill -9 <i>pid</i></td>
<td>tell the operating system to kill the process immediately</td>
<td>killall "Chrome"</td>
<td>kill all processes with Chrome in the name</td>
<td>shutdown -h +10</td>
<td>shutdown (halt) the computer in 10 minutes</td>
<td>shutdown -h now</td>
<td>shutdown the computer now</td>
<td>shutdown -r now</td>
<td>reboot the computer now</td>
<td>reboot</td>
<td>Raspberry Pi only</td>
<td>clear</td>
<td>clear the screen, does not clear your history</td>
</table>

### Git

<table>
<td>git clone <i>paste from github</i>` </td>
<td>git pull` </td>
<td>git status` </td>
<td>git add <i>file1</i> <i>file2</i>` </td>
<td>git commit -m "comment on what has changed with this commit"` </td>
<td>git push` </td>
</table>

### Mac Only

<table>
<td>say "some phrase"</td>
<td>speaks the text</td>
<td><i>command</i> | say</td>
<td>speaks the output of the command</td>
<td>open <i>fileName</i></td>
<td>will open the file with the appropriate app, unzipping if necessary</td>
<td>open <i>path</i></td>
<td>will open the directory specified.  Try `open .` and `open /`</td>
</table>

## Remote Administration

### Logging In and Out

<table>
<td>ssh-keygen</td>
<td>generate an rsa key to use when logging in to a remote machine.  It will be saved in `~/.ssh/` Remember your passphrase if you want to log in again</td>
<td>ssh <i>username</i>@<i>hostname</i></td>
<td>example: `ssh holly@myDomain.com`</td>
<td>ssh <i>username</i>@<i>ipAddress</i></td>
<td>example: `ssh holly@192.168.1.32`</td>
<td>ssh -l <i>username</i> <i>hostname</i></td>
<td>example: `ssh -l holly myDomain.com`</td>
<td>passwd</td>
<td>helps you reset your password, does not help you remember it</td>
<td>exit</td>
<td>logout</td>
<td>~.<i>enter</i></td>
<td>to restore your prompt after logging out if ssh hangs</td>
</table>

You can set nicknames for hosts in `/etc/hosts` if you're feeling brave.

### File Transfer

<table>
<td>scp <i>from</i> <i>to</i></td>
<td>securely copy a file from one machine to another</td>
<td>scp <i>fileName</i> <i>server</i>:<i>destinationDir</i></td>
<td>from your local machine to the server</td>
<td>scp <i>server</i>:<i>filePath</i> <i>destinationDir</i></td>
<td>from the server to your local macine</td>
<td>scp <i>server</i>:<i>filePath</i> .</td>
<td>from the server to your current directory</td>
<td>scp myFile 192.168.1.32:/home/holly/</td>
<td>example, copy myFile to my home directory on a Raspberry Pi</td>
<td>scp myFile myServer.myDomain.com:/home/holly/` </td>
</table>

On a Mac you can drag and drop a url from your browser onto the command line, so you don't have to type it.

<table>
<td>curl -O <i>url</i></td>
<td>download the file at the url, keeping it's name</td>
<td>curl -o <i>newName</i> <i>url</i></td>
<td>download the file at the url, renaming it</td>
<td>curl -O --continue <i>url</i></td>
<td>if you can't download the file because the connection keeps getting interrupted, `--continue` will make `curl` start again where it left off as soon as the connection is reestablished</td>
<td>tar</td>
</table>

### Superuser

<table>
<td>sudo <i>command</i></td>
<td>run the command as root</td>
</table>

### Users and Groups

The following commands must be run as root or with `sudo`.

<table>
<td>useradd -m <i>username</i> -p <i>password</i></td>
<td>add a user and assign them a password</td>
</table>

The user can then log on and use the `passwd` command to change their password.

<table>
<td>groupadd <i>groupname</i></td>
<td>add a group</td>
<td>usermod -a -G <i>groupname</i> <i>username</i></td>
<td>put a user in a group, (append the user to the group)</td>
</table>

## Odds and Ends

### Running Multiple Commands

<table>
<td>&&</td>
<td>runs commands sequentially, so</td>
</table>

```
<i>longRunningCommand</i> && say "I'm done"
```

Pipe `|` "pipes" the output of the first command into the second command.

<table>
<td>ls | less</td>
<td>is useful for directories with so many files they scroll off the screen  </td>
</table>

### Typing Less

<table>
<td>!!</td>
<td>bang-bang, run last command (same as up-arrow)</td>
<td><i>command</i> !!</td>
<td>run the command with the arguments of the last command</td>
<td>file /long/path/to/file/do/not/want/to/type/again</td>
<td>shows file type of `again`</td>
<td>rm !!</td>
<td>deletes the file `again` referenced in the previous command </td>
<td>sudo !!</td>
<td>run the last command as root (this one is so useful some people alias it to "oops" or more colorful words  </td>
<td>!<i>string</i></td>
<td>run the command that is or starts with <i>string</i> exactly as it was run the last time (for when you don't want to type all the arguments again)</td>
<td>!205</td>
<td>run the command number 205 from your history</td>
</table>

## When Things Go Wrong

<table>
<td>q</td>
<td>some commands quit on `q` (like less)</td>
<td>ctrl-c</td>
<td>quit current progam</td>
<td>~.<i>enter</i></td>
<td>if you just quit ssh or lost your ssh connection and don't have a prompt</td>
<td>stty sane</td>
<td>if everything is weird, this sets the terminal configuration to something reasonable</td>
<td>ctrl-d</td>
<td>send end-of-file (last resort because it might log you out)</td>
</table>

Of course, you can always just close the terminal and open a new one. ¯\\\_(ツ)\_/¯
