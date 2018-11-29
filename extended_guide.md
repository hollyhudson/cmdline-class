# Intro to the Command Line

## Concepts and Jargon

A _shell_ is an interface to your computer's operating system.  For the most part, when you use your computer you just tell your operating system what programs you want to run, and the operating system decides how to utilize the physical hardware in your computer to make that happen -- deciding which programs get to use the processor and when, and which get to store things in memory, and for how long, and where, exactly, they can store stuff so they don't interfere with other programs. 

Instead of talking to the operating system directly, we talk to an interface (a shell) that is designed to be easy for humans to use.  In Windows, that graphical interface with all the .. windows .. is your shell.  Mac computers also provide a shell that is a graphical user interface. 

In the past command line shells were the only option -- you may remember MS DOS or some type of Unix.  Command line shells have the advantage of being fast, lightweight, and modular.  They also usually allow the user to interact with the computer at a deeper level, whereas a GUI will often serve as a gatekeeper, preventing the user from doing anything that might harm the computer that they wouldn't know how to fix, but also preventing the user from doing some useful and interesting things.

Your _prompt_ is where you enter commands.  It's customizable so there are several variations but these are common:

```
>
$
computer_name:~/:
```

There's even a Windows command prompt:

```
C:\>
```

In Unix/Linux we call folders _directories_.  A _path_ is a roadmap to a particular place in a file system expressed as a list of the nested directories you'll have to go into to get to that spot.  So, maybe I have a recipe file called `pizza.pdf`, its full path might be `/home/holly/documents/recipes/pizza.pdf`.

## Basic Usage

At your prompt, type the command, then hit enter. All _arguments_ that you pass to a command are separated by spaces.  So if I want to make a duplicate of a kitten image called `kitten.png` using the copy (`cp`) command, and I want the duplicate file to be named puppy.png, I would do the following:

```bash
> cp kitten.png puppy.png
```

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

If you have no prompt after logging out (ssh sometimes does this), type:

- `~.[enter]`

## Filesystem Navigation

### Commands

- `ls` - list files
- `file [fileName]` - show file type
- `less [fileName]` - a "pager" that shows contents of fileName (`q` to quit)
- `cd [directoryName]` - change directory to directoryName
- `cd` - with no arguments you'll go to your home directory
- `cd ..` - go back to the parent directory

- `pwd` - print working directory

If you lose your prompt, try `ctrl-c`.

### Activity

Explore the file system using these commands.  If you get lost, use `pwd` to see where you are or `cd` with no arguments to go back to your home directory.

## Manipulating Files

### Commands

- `cp [originalFileName] [copyFileName]` - copy (duplicate) a file
- `mv [oldFileName] [newFileName]` - move (rename) a file
- `rm [fileName]` - remove (delete) a file

Note: These commands can be destructive.  If you copy or move a file to a file name of a file that already exists, that old file will be **overwritten**.  There is no warning, there is no trash can, the file will just be gone. 

- `touch [fileName` - make a new, empty file, or update the timestamp on an existing file
- `mkdir [newDirName` - make a new, empty directory

- `cp -r [originalDir] [copyDir]` - copy (duplicate, recursively) a directory, if copyDir exists it will now contain the contents of both directories
- `mv [oldDir] [newDir]` - move (rename) a directory, if newDir exists oldDir will be placed inside newDir
- `rm -rf [dirName]` - remove a directory, recursively, force it

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
