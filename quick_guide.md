# Intro to the Command Line

## Basic Structure of a Command

```
> command argument1 argument2 argument3{enter}
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

<dl>
<dt>ls</dt>
<dd>list files</dd>
<dt>file {fileName}</dt>
<dd>show file type</dd>
<dt>less {fileName}</dt>
<dd>a "pager" that shows contents of fileName (`q` to quit)</dd>
<dt>cd {directoryName}</dt>
<dd>change directory to directoryName</dd>
<dt>cd</dt>
<dd>with no arguments you'll go to your home directory</dd>
<dt>cd ..</dt>
<dd>go back to the parent directory</dd>
<dt>cd -</dt>
<dd>go back to where you were before you ran cd the last time</dd>
<dt>pwd</dt>
<dd>print working directory</dd>
</dl>

If you lose your prompt, try `ctrl-c`.

## Manipulating Files

### Creating, Deleting, and Moving Files

<dl>
<dt>cp {originalFileName} {copyFileName}</dt>
<dd>copy (duplicate) a file</dd>
<dt>mv {oldFileName} {newFileName}</dt>
<dd>move (rename) a file</dd>
<dt>rm {fileName}</dt>
<dd>remove (delete) a file, use with caution</dd>
<dt>touch {fileName}</dt>
<dd>make a new, empty file, or update the timestamp on an existing file</dd>
<dt>mkdir {newDirName}</dt>
<dd>make a new, empty directory</dd>
<dt>cp -r {originalDir} {copyDir}</dt>
<dd>copy (duplicate, recursively) a directory, if copyDir exists it will now contain the contents of both directories</dd>
<dt>mv {oldDir} {newDir}</dt>
<dd>move (rename) a directory, if newDir exists oldDir will be placed inside newDir</dd>
<dt>rm -rf {dirName}</dt>
<dd>remove a directory, recursively, force it, be VERY careful with this command</dd>
</dl>

### File Redirection

<dl>
<dt>cat {fileName}</dt>
<dd>print contents of fileName to the screen (like less, but not as nice)</dd>
<dt>cat {thisFile} > {thatFile}</dt>
<dd>overwrite thatFile with the contents of thisFile, unless "noclobber" is set</dd>
<dt>cat {thisFile} >> {thatFile}</dt>
<dd>append the contents of thisFile to thatFile</dd>
<dt>echo "Here is some content" > {fileName}</dt>
<dd>overwrite fileName with the content in quotes, unless "noclobber" is set</dd>
<dt>echo "Here is some content" >> {fileName}</dt>
<dd>append what's in quotes to fileName</dd>
<dt>{command} > {fileName}</dt>
<dd>send the output of the command to the file</dd>
<dt>ls > {fileName}</dt>
<dd>fileName now contains a list of files</dd>
<dt>source {thisFile}</dt>
<dd>execute commands in thisFile in this shell, useful for loading your bash config file</dd>
<dt>nano</dt>
<dt>vi</dt>
</dl>

### Permissions

<dl>
<dt>chmod a+r {fileName}</dt>
<dd>give all users read permission</dd>
<dt>chmod a+rwx {fileName}</dt>
<dd>give all users read, write, and execute permission</dd>
<dt>chmod a-x {fileName}</dt>
<dd>remove execute permission for everyone</dd>
<dt>chown {user} {fileName}</dt>
<dd>give ownership of fileName to user</dd>
<dt>chown frodo rings/the_one</dt>
</dl>

### Symlinks

<dl>
<dt>ln -s {originalFile} {symlinkFile}</dt>
<dd>create a file that is just a link to another file</dd>
<dt>ln -s ~/dotfiles/bashrc .bashrc</dt>
<dd>make your .bashrc a symlink to the file in your dotfiles directory</dd>
</dl>

## Getting Information

### About Commands

<dl>
<dt>ls -Flah</dt>
<dd>list all files with all the details (aka "long list")</dd>
<dt>which {command}</dt>
<dd>shows you the path to the command, no output means either the command is not installed or it is not in your path</dd>
<dt>man {command}</dt>
<dd>show the manual page for the command (try man shutdown, for instance)</dd>
<dt>{command} --version`</dt>
<dt>{command} --help`</dt>
<dt>tldr {command}</dt>
<dd>more beginner-friendly than `man`, but it doesn't come standard, you'll need to download and install it</dd>
</dl>

### About Files

<dl>
<dt>file {fileName}</dt>
<dd>show file type</dd>
<dt>less {fileName}</dt>
<dd>a "pager" that shows contents of fileName (`q` to quit)</dd>
<dt>find {dirName} -name {'kitten.png'}</dt>
<dd>find files recursively in dirName</dd>
<dt>find {dirName} -name '*.png'</dt>
<dd>find all png images in dirName</dd>
<dt>grep {string} *</dt>
<dd>show files in current directory that contain the string</dd>
<dt>grep -iR {string} {dirName}</dt>
<dd>show files in dirName that contain the string, case-insensitive, recursively</dd>
<dt>grep {string} {dirName}</dt>
<dd>show files in dirName that contain the word (or number or whatever)</dd>
<dt>grep {'string with spaces'} {dirName}</dt>
<dd>show files in dirName that contain the phrase</dd>
</dl>

### About Your Computer

<dl>
<dt>uname -a</dt>
<dd>print (all) information about the computer</dd>
<dt>top</dt>
<dd>list all process with memory and cpu usage (like Activity Monitor on the Mac or Task Manager on Windows)</dd>
<dt>top -o cpu</dt>
<dd>sort by cpu usage</dd>
<dt>ps aux</dt>
<dd>list all currently running processes</dd>
<dt>ps aux | grep -i Chrome</dt>
<dd>list all running processes with Chrome or chrome in the name</dd>
<dt>du -h {dirName}</dt>
<dd>show sizes of all files in dirName with human-readable units (useful if you're trying to delete large files because you've run out of space)</dd>
<dt>df -h</dt>
<dd>show an overview of filesystem space usage with human-readable units</dd>
</dl>

### About the Network

<dl>
<dt>ping {url}</dt>
<dd>see if a server or site it up, will also report connection quality</dd>
<dt>traceroute {url}</dt>
<dd>report the path from your computer to the site or server</dd>
</dl>

### About Your Environment

<dl>
<dt>jobs</dt>
<dd>list all processes your user is currently running (see bg & fg)</dd>
<dt>history</dt>
<dd>list previously run commands (what did I just do??)</dd>
<dt>echo "hello there!"</dt>
<dd>print stuff to the screen</dd>
<dt>echo {$ENVIRONMENT_VARIABLE}</dt>
<dd>print the value</dd>
<dt>echo $PATH</dt>
<dd>prints the path bash uses to find commands for you</dd>
</dl>

### About Other Things

<dl>
<dt>date`</dt>
<dt>cal`</dt>
<dt>cal 1752</dt>
<dd>what's up with Sept?</dd>
</dl>

## Actions

### Installing Things

<dl>
<dt>brew install {command}</dt>
<dd>on mac</dd>
<dt>apt-get install {command}</dt>
<dd>on Debian and Raspbian</dd>
<dt>apt-get install git</dt>
<dd>for example</dd>
</dl>

### Stopping Things

<dl>
<dt>ctrl-z</dt>
<dd>suspend the process that's in the foreground (put it to sleep 💤)</dd>
<dt>ctrl-c</dt>
<dd>kill the process that's in the foreground</dd>
<dt>ctrl-d</dt>
<dd>send an "end of file".  Last thing to try when you can't exit a program.  If you type it when nothing is running it will log you out.</dd>
<dt>bg</dt>
<dd>run the process you just stopped in the background</dd>
<dt>fg</dt>
<dd>bring a process in the background back to the foreground</dd>
<dt>jobs</dt>
<dd>list all the suspended commands</dd>
<dt>fg %2</dt>
<dd>bring suspended job number 2 back to the foreground</dd>
<dt>kill %1</dt>
<dd>kill the suspended job number 1</dd>
<dt>kill {pid}</dt>
<dd>tell the process to end.  If this doesn't work, use -9 flag</dd>
<dt>kill -9 {pid}</dt>
<dd>tell the operating system to kill the process immediately</dd>
<dt>killall "Chrome"</dt>
<dd>kill all processes with Chrome in the name</dd>
<dt>shutdown -h +10</dt>
<dd>shutdown (halt) the computer in 10 minutes</dd>
<dt>shutdown -h now</dt>
<dd>shutdown the computer now</dd>
<dt>shutdown -r now</dt>
<dd>reboot the computer now</dd>
<dt>reboot</dt>
<dd>Raspberry Pi only</dd>
<dt>clear</dt>
<dd>clear the screen, does not clear your history</dd>
</dl>

### Git

<dl>
<dt>git clone {paste from github}` </dt>
<dt>git pull` </dt>
<dt>git status` </dt>
<dt>git add {file1} {file2}` </dt>
<dt>git commit -m "comment on what has changed with this commit"` </dt>
<dt>git push` </dt>
</dl>

### Mac Only

<dl>
<dt>say "some phrase"</dt>
<dd>speaks the text</dd>
<dt>{command} | say</dt>
<dd>speaks the output of the command</dd>
<dt>open {fileName}</dt>
<dd>will open the file with the appropriate app, unzipping if necessary</dd>
<dt>open {path}</dt>
<dd>will open the directory specified.  Try `open .` and `open /`</dd>
</dl>

## Remote Administration

### Logging In and Out

<dl>
<dt>ssh-keygen</dt>
<dd>generate an rsa key to use when logging in to a remote machine.  It will be saved in `~/.ssh/` Remember your passphrase if you want to log in again</dd>
<dt>ssh {username}@{hostname}</dt>
<dd>example: `ssh holly@myDomain.com`</dd>
<dt>ssh {username}@{ipAddress}</dt>
<dd>example: `ssh holly@192.168.1.32`</dd>
<dt>ssh -l {username} {hostname}</dt>
<dd>example: `ssh -l holly myDomain.com`</dd>
<dt>passwd</dt>
<dd>helps you reset your password, does not help you remember it</dd>
<dt>exit</dt>
<dd>logout</dd>
<dt>~.{enter}</dt>
<dd>to restore your prompt after logging out if ssh hangs</dd>
</dl>

You can set nicknames for hosts in `/etc/hosts` if you're feeling brave.

### File Transfer

<dl>
<dt>scp {from} {to}</dt>
<dd>securely copy a file from one machine to another</dd>
<dt>scp {fileName} {server}:{destinationDir}</dt>
<dd>from your local machine to the server</dd>
<dt>scp {server}:{filePath} {destinationDir}</dt>
<dd>from the server to your local macine</dd>
<dt>scp {server}:{filePath} .</dt>
<dd>from the server to your current directory</dd>
<dt>scp myFile 192.168.1.32:/home/holly/</dt>
<dd>example, copy myFile to my home directory on a Raspberry Pi</dd>
<dt>scp myFile myServer.myDomain.com:/home/holly/` </dt>
</dl>

On a Mac you can drag and drop a url from your browser onto the command line, so you don't have to type it.

<dl>
<dt>curl -O {url}</dt>
<dd>download the file at the url, keeping it's name</dd>
<dt>curl -o {newName} {url}</dt>
<dd>download the file at the url, renaming it</dd>
<dt>curl -O --continue {url}</dt>
<dd>if you can't download the file because the connection keeps getting interrupted, `--continue` will make `curl` start again where it left off as soon as the connection is reestablished</dd>
<dt>tar</dt>
</dl>

### Superuser

<dl>
<dt>sudo {command}</dt>
<dd>run the command as root</dd>
</dl>

### Users and Groups

The following commands must be run as root or with `sudo`.

<dl>
<dt>useradd -m {username} -p {password}</dt>
<dd>add a user and assign them a password</dd>
</dl>

The user can then log on and use the `passwd` command to change their password.

<dl>
<dt>groupadd {groupname}</dt>
<dd>add a group</dd>
<dt>usermod -a -G {groupname} {username}</dt>
<dd>put a user in a group, (append the user to the group)</dd>
</dl>

## Odds and Ends

### Running Multiple Commands

<dl>
<dt>&&</dt>
<dd>runs commands sequentially, so</dd>
</dl>

```
{longRunningCommand} && say "I'm done"
```

Pipe `|` "pipes" the output of the first command into the second command.

<dl>
<dt>ls | less</dt>
<dd>is useful for directories with so many files they scroll off the screen  </dd>
</dl>

### Typing Less

<dl>
<dt>!!</dt>
<dd>bang-bang, run last command (same as up-arrow)</dd>
<dt>{command} !!</dt>
<dd>run the command with the arguments of the last command</dd>
<dt>file /long/path/to/file/do/not/want/to/type/again</dt>
<dd>shows file type of `again`</dd>
<dt>rm !!</dt>
<dd>deletes the file `again` referenced in the previous command </dd>
<dt>sudo !!</dt>
<dd>run the last command as root (this one is so useful some people alias it to "oops" or more colorful words  </dd>
<dt>!{string}</dt>
<dd>run the command that is or starts with {string} exactly as it was run the last time (for when you don't want to type all the arguments again)</dd>
<dt>!205</dt>
<dd>run the command number 205 from your history</dd>
</dl>

## When Things Go Wrong

<dl>
<dt>q</dt>
<dd>some commands quit on `q` (like less)</dd>
<dt>ctrl-c</dt>
<dd>quit current progam</dd>
<dt>~.{enter}</dt>
<dd>if you just quit ssh or lost your ssh connection and don't have a prompt</dd>
<dt>stty sane</dt>
<dd>if everything is weird, this sets the terminal configuration to something reasonable</dd>
<dt>ctrl-d</dt>
<dd>send end-of-file (last resort because it might log you out)</dd>
</dl>

Of course, you can always just close the terminal and open a new one. ¯\\\_(ツ)\_/¯
