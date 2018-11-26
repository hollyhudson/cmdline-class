# Intro to the Command Line

## Basic Usage

At your prompt, type the command, then hit enter.  If you need to pass arguments (file names or flags, etc.) type the command, a space, flags, a space, argument 1, a space, argument 2, etc., then press enter:

```bash
> ls[enter]
> ls -l[enter]
> cp fileName1 fileName2[enter]
```

If you lose your prompt, try `ctrl-c`.

## Logging In and Out

'ssh' stands for secure shell.  It sets up an encrypted connection to another machine.

- `ssh user@hostname`
- `ssh user@ipAddress`

Examples:

- `ssh holly@myDomain.com`
- `ssh holly@192.168.1.32`

Your first task on a new machine is to run:

- `passwd` - Helps you reset your password.  Will not help you remember it.

To log out:

- `exit`

## Filesystem Navigation

### Commands

- `ls` - list files
- `file fileName` - show file type
- `less fileName` - a "pager" that shows contents of fileName (`q` to quit)
- `cd directoryName` - change directory to directoryName
- `cd` - with no arguments you'll go to your home directory
- `cd ..` - go back to the parent directory

- `pwd` - print working directory

### Activity

Explore the file system using these commands.  If you get lost, use `pwd` to see where you are or `cd` with no arguments to go back to your home directory.

## Manipulating Files

### Commands

- `cp originalFileName copyFileName` - copy (duplicate) a file
- `mv oldFileName newFileName` - move (rename) a file
- `rm fileName` - remove (delete) a file

Note: These commands can be destructive.  If you copy or move a file to a file name of a file that already exists, that old file will be **overwritten**.  There is no warning, there is no trash can, the file will just be gone. 

- `touch fileName` - make a new, empty file, or update the timestamp on an existing file
- `mkdir newDirName` - make a new, empty directory

- `cp -r originalDir copyDir` - copy (duplicate, recursively) a directory, if copyDir exists it will now contain the contents of both directories
- `mv oldDir newDir` - move (rename) a directory, if newDir exists oldDir will be placed inside newDir
- `rm -rf dirName` - remove a directory, recursively, force it

Note:  `rm -rf` does not come with training wheels, an archive folder, or an undo.  If you run this command on your home directory you **will delete all your stuff forever**.  Treat this command like a stick of dynamite -- before you use it, Stop.  Think.  And double check which directory you are in and exactly what you are about to delete.  Don't let your fingers get ahead of your brain.  And when you do accidentally delete something important, welcome to the club.  We've all done it, and we totally feel your pain.

### Activity

Create some empty files and directories.  Copy and rename them.  Move them into and out of directories.  Delete some directories.

## Manipulating Files

### Commands
### Activity

Installing stuff:

trans


Shell scripting:

write saynl.sh, chmod so you can run it, check with ll, is ~/bin in your path?

mkdir public_html, and place index.html style.css and interaction.js in it.

Digital Ocean instance:

sudo to edit main web page on instance to add a link to your own

Pi:

Create another user account
