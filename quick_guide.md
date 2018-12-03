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
<td>a "pager" that shows contents of fileName (<tt>q</tt> to quit)</td>
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
<td>copy, recursively a directory, if <tt><i>copy</i></tt> exists it will now contain the contents of both directories</td>
</tr>
<tr>
<td><tt>mv <i>oldDir</i> <i>newDir</i></tt></td>
<td>move (rename) a directory, if <tt><i>newDir</i></tt> exists <tt><i>oldDir</i></tt> will be placed inside <tt><i>newDir</i></tt></td>
</tr>
<tr>
<td><tt>rm -rf <i>dirName</i></tt></td>
<td>remove a directory, recursively, force it, be VERY careful with this command</td>
</table>

### File Redirection

<table>
<tr>
<td><tt>cat <i>fileName</i></tt></td>
<td>print contents of fileName to the screen (like less, but not as nice)</td>
</tr>
<tr>
<td nowrap><tt>cat <i>thisFile</i> > <i>thatFile</i></tt></td>
<td>overwrite thatFile with the contents of thisFile, unless "noclobber" is set</td>
</tr>
<tr>
<td nowrap><tt>cat <i>thisFile</i> >> <i>thatFile</i></tt></td>
<td>append the contents of thisFile to thatFile</td>
</tr>
<tr>
<td nowrap><tt>echo "Some text" > <i>fileName</i></tt></td>
<td>overwrite fileName with the content in quotes, unless "noclobber" is set</td>
</tr>
<tr>
<td nowrap><tt>echo "Some text" >> <i>fileName</i></td>
<td>append what's in quotes to fileName</td>
</tr>
<tr>
<td><tt><i>command</i> > <i>fileName</i></tt></td>
<td>send the output of the command to the file</td>
</tr>
<tr>
<td><tt>ls > <i>fileName</i></tt></td>
<td>fileName now contains a list of files</td>
</tr>
<tr>
<td><tt>source <i>thisFile</i></tt></td>
<td>execute commands in thisFile in this shell, useful for loading your bash config file</td>
</tr>
</table>

### Permissions

<table>
<tr>
<td><tt>chmod a+r <i>fileName</i></tt></td>
<td>give all users read permission</td>
</tr>
<tr>
<td nowrap><tt>chmod a+rwx <i>fileName</i></tt></td>
<td>give all users read, write, and execute permission</td>
</tr>
<tr>
<td><tt>chmod a-x <i>fileName</i></tt></td>
<td>remove execute permission for everyone</td>
</tr>
<tr>
<td><tt>chown <i>user</i> <i>fileName</i></tt></td>
<td>give ownership of fileName to user: <tt>chown frodo rings/the_one</tt></td>
</tr>
</table>

### Symlinks

<table>
<tr>
<td nowrap><tt>ln -s <i>originalFile</i> <i>symlinkFile</i></tt></td>
<td>create a file that is just a link to another file</td>
</tr>
<tr>
<td nowrap><tt>ln -s ~/dotfiles/bashrc .bashrc</tt></td>
<td>make your .bashrc a symlink to the file in your dotfiles directory</td>
</tr>
</table>

## Getting Information

### About Commands

<table>
<tr>
<td><tt>ls -Flah</tt></td>
<td>list all files with all the details (aka "long list")</td>
</tr>
<tr>
<td nowrap><tt>which <i>command</i></tt></td>
<td>shows you the path to the command if you have the command installed</td>
</tr>
<tr>
<td nowrap><tt>man <i>command</i></tt></td>
<td>show the manual page for the command (try man shutdown, for instance)</td>
</tr>
<tr>
<td><tt>tldr <i>command</i></tt></td>
<td>more beginner-friendly than <tt>man</tt>, but it doesn't come standard, you'll need to download and install it</td>
</tr>
</table>

### About Files

<table>
<tr>
<td><tt>file <i>fileName</i></tt></td>
<td>show file type</td>
</tr>
<tr>
<td><tt>less <i>fileName</i></tt></td>
<td>a "pager" that shows contents of fileName (<tt>q</tt> to quit)</td>
</tr>
<tr>
<td nowrap><tt>find <i>dir</i> -name <i>file</i></tt></td>
<td>find files recursively in <tt><i>dir</i></tt></td>
</tr>
<tr>
<td nowrap><tt>find <i>dir</i> -name *.png</tt></td>
<td>find all png images in <tt><i>dir</i></tt></td>
</tr>
<tr>
<td nowrap><tt>grep <i>string</i> *</tt></td>
<td>show files in current directory that contain the string</td>
</tr>
<tr>
<td nowrap><tt>grep -iR <i>string</i> <i>dir</i></tt></td>
<td>show files in <tt><i>dir</i></tt> that contain the string, case-insensitive, recursively</td>
</tr>
<tr>
<td><tt>grep <i>string</i> <i>dir</i></tt></td>
<td>show files in <tt><i>dir</i></tt> that contain the string (word, number, or whatever)</td>
</tr>
<tr>
<td nowrap><tt>grep <i>'with spaces'</i> <i>dir</i></tt></td>
<td>if your string has spaces use quotes (single or double) </td>
</tr>
</table>

### About Your Computer

<table>
<tr>
<td><tt>uname -a</tt></td>
<td>print (all) information about the computer</td>
</tr>
<tr>
<td><tt>top</tt></td>
<td>show cpu and memory use of processes (like Activity Monitor or Task Manager)</td> </tr>
<tr>
<td><tt>top -o cpu</tt></td>
<td>sort by cpu usage</td>
</tr>
<tr>
<td><tt>ps aux</tt></td>
<td>list all currently running processes</td>
</tr>
<tr>
<td nowrap><tt>ps aux | grep -i Chrome</tt></td>
<td>list all running processes with Chrome or chrome in the name</td>
</tr>
<tr>
<td><tt>du -h <i>dirName</i></tt></td>
<td>show sizes of all files in dirName with human-readable units</td>
</tr>
<tr>
<td><tt>df -h</tt></td>
<td>show an overview of filesystem space usage with human-readable units</td>
</tr>
</table>

### About the Network

<table>
<tr>
<td><tt>ping <i>url</i></tt></td>
<td>see if a server or site it up, will also report connection quality</td>
</tr>
<tr>
<td><tt>traceroute <i>url</i></tt></td>
<td>report the path from your computer to the site or server</td>
</tr>
</table>

### About Your Environment

<table>
<tr>
<td><tt>jobs</tt></td>
<td>list all processes your user is currently running (see bg & fg)</td>
</tr>
<tr>
<td><tt>history</tt></td>
<td>list previously run commands (what did I just do??)</td>
</tr>
<tr>
<td><tt>echo "hello there!"</tt></td>
<td>print stuff to the screen</td>
</tr>
<tr>
<td nowrap><tt>echo <i>$ENVIRONMENT_VARIABLE</i></tt></td>
<td>print the value</td>
</tr>
<tr>
<td><tt>echo $PATH</tt></td>
<td>prints the path bash uses to find commands for you</td>
</tr>
</table>

### About Other Things

<table>
<tr>
<td><tt>date</tt></td>
<td>show the current date</td>
</tr>
<tr>
<td><tt>cal</tt></td>
<td>show a calendar for the current month</td>
</tr>
<tr>
<td><tt>cal 1752</tt></td>
<td>what's up with Sept?</td>
</tr>
</table>

## Actions

### Installing Things

<table>
<tr>
<td><tt>brew install <i>command</i></tt></td>
<td>on mac</td>
</tr>
<tr>
<td><tt>apt-get install <i>command</i></tt></td>
<td>on Debian and Raspbian</td>
</tr>
<tr>
<td><tt>apt-get install git</tt></td>
<td>for example</td>
</tr>
</table>

### Stopping Things

<table>
<tr>
<td><tt>bg</tt></td>
<td>run a suspended process in the background</td>
<td nowrap><tt>ctrl-z</tt></td>
<td>suspend the process that's in the foreground (put it to sleep 💤)</td>
</tr>
<tr>
<td><tt>fg</tt></td>
<td>bring a process to the foreground</td>
<td><tt>ctrl-c</tt></td>
<td>kill the process that's in the foreground</td>
</tr>
<tr>
<td><tt>jobs</tt></td>
<td>list all suspended commands</td>
<td><tt>ctrl-d</tt></td>
<td>send an "end of file".  Last thing to try when you can't exit a program.  If you type it when nothing is running it will log you out.</td>
</tr>
<tr>
<td><tt>fg %2</tt></td>
<td>foreground job 2</td>
<td><tt>shutdown -h +10</tt></td>
<td>shutdown (halt) the computer in 10 minutes</td>
</tr>
<tr>
<td><tt>kill %1</tt></td>
<td>kill job 1</td>
<td nowrap><tt>shutdown -h now</tt></td>
<td>shutdown the computer now</td>
</tr>
<tr>
<td><tt>kill <i>pid</i></tt></td>
<td>ask the process to end</td>
<td nowrap><tt>shutdown -r now</tt></td>
<td>reboot the computer now</td>
</tr>
<tr>
<td nowrap><tt>kill -9 <i>pid</i></tt></td>
<td>tell the operating system to kill the process immediately</td>
<td><tt>reboot</tt></td>
<td>Raspberry Pi only</td>
</tr>
<tr>
<td nowrap><tt>killall "Chrome"</tt></td>
<td>kill all processes with Chrome in the name</td>
<td><tt>clear</tt></td>
<td>clear the screen, does not clear your history</td>
</tr>
</table>

### Git

<table>
<tr>
<td nowrap><tt>git clone <i>(paste from github)</i></tt></td>
<td>copy a repo to your computer</td>
<td rowspan="6"><img src="https://imgs.xkcd.com/comics/git.png" width="200">
</tr>
<tr>
<td><tt>git pull</tt></td>
<td>pull the latest version to your compture</td>
</tr>
<tr>
<td><tt>git status</tt></td>
<td>check the status of the files in your repo</td>
</tr>
<tr>
<td nowrap><tt>git add <i>file1</i> <i>file2</i></tt></td>
<td>mark files to be committed</td>
</tr>
<tr>
<td><tt>git commit -m "your comment"</tt></td>
<td>commit added files to your local repo</td>
</tr>
<tr>
<td><tt>git push</tt></td>
<td>push all committed changes to the remote repo</td>
</tr>
</table>

### Mac Only

<table>
<tr>
<td><tt>say "some phrase"</tt></td>
<td>speaks the text</td>
</tr>
<tr>
<td><tt><i>command</i> | say</tt></td>
<td>speaks the output of the command</td>
</tr>
<tr>
<td><tt>open <i>fileName</i></tt></td>
<td>will open the file with the appropriate app, unzipping if necessary</td>
</tr>
<tr>
<td><tt>open <i>path</i></tt></td>
<td>will open the directory specified.  Try <tt>open .</tt> and <tt>open /</tt></td>
</tr>
</table>

## Remote Administration

### Logging In and Out

<table>
<tr>
<td><tt>ssh-keygen</tt></td>
<td>generate an rsa key to use when logging in to a remote machine.  It will be saved in <tt>~/.ssh/</tt> Remember your passphrase if you want to log in again.</td>
</tr>
<tr>
<td nowrap><tt>ssh <i>username</i>@<i>hostname</i></tt></td>
<td>example: <tt>ssh holly@host.myDomain.com</tt></td>
</tr>
<tr>
<td nowrap><tt>ssh <i>username</i>@<i>ipAddress</i></tt></td>
<td>example: <tt>ssh holly@192.168.1.32</tt></td>
</tr>
<tr>
<td nowrap><tt>ssh -l <i>username</i> <i>hostname</i></tt></td>
<td>example: <tt>ssh -l holly host.myDomain.com</tt></td>
</tr>
<tr>
<td><tt>passwd</tt></td>
<td>helps you reset your password, does not help you remember it</td>
</tr>
<tr>
<td><tt>exit</tt></td>
<td><tt>logout</tt></td>
</tr>
<tr>
<td><tt>~.<i>enter</i></tt></td>
<td>to restore your prompt after logging out if ssh hangs</td>
</tr>
</table>

You can set nicknames for hosts in `/etc/hosts` if you're feeling brave.

<img src="https://imgs.xkcd.com/comics/im_an_idiot.png" width="400">

### File Transfer

<table>
<tr>
<td><tt>scp <i>from</i> <i>to</i></tt></td>
<td>securely copy a file from one machine to another</td>
</tr>
<tr>
<td><tt>scp <i>file</i> <i>server</i>:<i>destinationPath</i></tt></td>
<td>from your local machine to the server</td>
</tr>
<tr>
<td nowrap><tt>scp <i>server</i>:<i>filePath</i> <i>destinationPath</i></tt></td>
<td>from the server to your local macine</td>
</tr>
<tr>
<td><tt>scp <i>server</i>:<i>filePath</i> .</tt></td>
<td>from the server to your current directory</td>
</tr>
</table>

Two examples, copying a file from your local machine to a remote machine using the remote's IP address and hostname:

```
> scp myFile 192.168.1.32:/home/holly/
> scp myFile gibson:/home/holly/
```

On a Mac you can drag and drop a url from your browser onto the command line, so you don't have to type it.

<table>
<tr>
<td><tt>curl -O <i>url</i></tt></td>
<td>download the file at the url, keeping it's name</td>
</tr>
<tr>
<td nowrap><tt>curl -o <i>newName</i> <i>url</i></tt></td>
<td>download the file at the url, renaming it</td>
</tr>
<tr>
<td nowrap><tt>curl -O --continue <i>url</i></tt></td>
<td>if you can't download the file because the connection keeps getting interrupted, <tt>--continue</tt> will make <tt>curl</tt> start again where it left off as soon as the connection is reestablished</td>
</tr>
<tr>
<td nowrap><tt>tar zcvf <i>file.tar.gz path</i></tt></td>
<td>compress files (and directories) at the end of the path into a zipped tarfile</td>
</tr>
<tr>
<td><tt>tar xvf <i>file.tar.gz</i></tt></td>
<td>unpack the files from a tarfile into the current directory</td>
</tr>
<tr>
<td><tt>tar tvf <i>file.tar.gz</i></tt></td>
<td>list the contents of a tarfile</td>
</tr>
</table>

<img src="https://imgs.xkcd.com/comics/tar.png" width="400">

### Superuser

<table>
<tr>
<td><tt>sudo <i>command</i></tt></td>
<td>run the command as root</td>
</tr>
</table>

### Users and Groups

The following commands must be run as root or with `sudo`.

<table>
<tr>
<td><tt>useradd -m <i>username</i> -p <i>password</i></tt></td>
<td>add a user and assign them a password</td>
</tr>
</table>

The user can then log on and use the `passwd` command to change their password.

<table>
<tr>
<td><tt>groupadd <i>groupname</i></tt></td>
<td>add a group</td>
</tr>
<tr>
<td><tt>usermod -a -G <i>groupname</i> <i>username</i></tt></td>
<td>put a user in a group, (append the user to the group)</td>
</tr>
</table>

## Odds and Ends

### Running Multiple Commands

<table>
<tr>
<td><tt>&&</tt></td>
<td>runs commands sequentially, so</td>
</tr>
</table>

```
sl && say "Ha ha ha"
```

Pipe `|` "pipes" the output of the first command into the second command.

<table>
<tr>
<td><tt>ls | less</tt></td>
<td>is useful for directories with so many files they scroll off the screen  </td>
</tr>
</table>

### Typing Less

<table>
<tr>
<td><tt>!!</tt></td>
<td>bang-bang, run last command (same as up-arrow)</td>
</tr>
<tr>
<td><tt>sudo !!</tt></td>
<td>run the last command as root (this one is so useful some people alias it to "oops" or more colorful words  </td>
</tr>
<tr>
<td><tt>!<i>string</i></tt></td>
<td>run the command that is or starts with <i>string</i> exactly as it was run the last time (for when you don't want to type all the arguments again)</td>
</tr>
<tr>
<td><tt>!205</tt></td>
<td>run the command number 205 from your history</td>
</tr>
<tr>
<td nowrap><tt><i>command</i> !!</tt></td>
<td>run the command with the arguments of the last command</td>
</tr>
</table>

Example of the last one in use:

```
> file /long/path/to/file/do/not/want/to/type/again
# returns the file type
> rm !!
# deletes that file without having to type the long path again
```

## When Things Go Wrong

<table>
<tr>
<td><tt>q</tt></td>
<td>some commands quit on <tt>q</tt> (like <tt>less</tt>)</td>
<tr>
</tr>
<td><tt>ctrl-c</tt></td>
<td>quit current progam</td>
<tr>
</tr>
<td><tt>~.<i>enter</i></tt></td>
<td>if you just quit ssh or lost your ssh connection and don't have a prompt</td>
<tr>
</tr>
<td nowrap><tt>stty sane</tt></td>
<td>if everything is weird, this sets the terminal configuration to something reasonable</td>
<tr>
</tr>
<td><tt>ctrl-d</tt></td>
<td>send end-of-file (last resort because it might log you out)</td>
</tr>
</table>

Of course, you can always just close the terminal and open a new one. ¯\\\_(ツ)\_/¯

_Comics from xkcd.com_
