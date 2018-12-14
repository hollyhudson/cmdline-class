ssh key-gen to make it easy to ssh
change bash_profile to enable colors for linux

## Instructor set up tasks

### 1) Set up the students' home directories on the pi

`tar` up the students_home directory in the repo and unpack it in `/etc/skel` on the pi.  This is the directory `useradd` uses as a template for new user accounts.  Since you'll unpack it in it's destination directory, go into the students_home directory on your local machine and:

```bash
touch students_home.tar.gz
tar zcvf students_home.tar.gz --exclude=students_home.tar.gz *
```

It's easiest to scp it to `/home/pi/` and then on the pi sudo cp it to `/etc/skel/`.  Inside `/etc/skel` do:

```bash
tar xvf students_home.tar.gz
```

Start the students out with some reasonable defaults for shell behavior: in the `/etc/skel` directory do: 

```bash
cp dotfiles/bashrc .bashrc
```

And do the same for `dotfiles/bash_profile`.  Create a `.ssh` directory and `cp dotfiles/ssh_config .ssh/config`.  

Since you'll want to log in as a user so that students see exactly what you do when you demonstrate using commands, you might want to edit the `.bash_profile`.  Please edit, don't replace it, because the one that's in place is thoroughly commented for the students.  Also, resist the temptation to, like, `set -o vi` or anything like that -- we want the environment to be user friendly for beginners.

### 2) Set up the quote file

The quote file is a special case, we want the students to have to change it's permissions to run it, and I couldn't find a way to ship it with these permissions, so on the pi in `/etc/skel`:

```bash
chmod u-r quote
```

### 3) Create the student user accounts

There's a script in the pi home directory that creates all the users and sets up their home directies (with whatever is in `/etc/skel`).

```bash
sudo ./add_all_users.sh userlist_pi # to create all users at once
sudo ./del_all_users.sh userlist_pi # to del all users at once
```
**Delete `userlist_pi` afterwards because it contains unencrypted passwords.**

Check `/etc/passwd` and `/home` to make sure everything is in place.  Log in as a student to make sure everything feels right.

For the digital ocean instances, just create the user accounts without providing a home directory template.  Students can `scp` their bashrc and bash_profiles over on their own for practice.

### 4) Set up your local environment

In your known_hosts, remove the entry for the gibson (or gibson.local
or whatever the Pi showed up as) so you get the same error the
students will get when you try to ssh.

### 5) Print out the paperwork

- Print cheatsheets for the students
- make username/passwd sheets of paper from userlist_pi so everyone can get on the pi and the instances.  If you're running 2 teams, let one side choose from userlist_cyberbiz and the other side choose from userlist_darkcyber.  (userlist_pi is just the list of the two groups combined.)


todo:
- edit the .ssh/config file and place it in the right place
- run all commands as a user on the pi

find an interesting log to tail 
cat tail /dev/input/mice
also try:
cat /dev/input/mice | /dev/fb0

=== class starts below ===

Finder beside the terminal for basic navigation

tab completion and ^ for previous command

file system structure and the home and root directories

## Explore:
	ls, cd, cat, less (veryLongFile, search for cookie), file

## Tasks:
	touch, nano (add items to the grocery_list), cp todos todays_tasks
	mv:
		less wrongName, mv wrongName rightName
		run file on hedgehog, mv to hedgehog.jpg, move into images
	redirection:
		cat grocery_list and shopping_list
		touch errand_list
		cat grocery_list > errand_list	
		cat shopping_list > errand_list	(discuss noclobber)
		cat shopping_list >> errand_list
	rm:
		less junk, rm junk
		look inside junkyDir, move out of it, then rm -r (-ri for asking) junkyDir
	clear

## Get Info:
	find and grep:
		find . -name '*.js'
		grep -r -i "good" *

	ls -Flah (aliased to ll), uname -a, du, df, history, ps aux, ps aux | grep -i Chrome (or something), top -o cpu, pgrep

	kill, and mention shutdown


## Permissions:

	try to open the quote file, then change permissions, then try again
	chmod u+r (or a+r) quote

permissions, users, root, groups historical context

ssh - get on the pi

look around

bash config files - show how to replace the one on your computer, and go through the files to talk about the options

Review:

Can you:
- in one command, put a list of all the files in your home directory into a file called myList?
- find the command you ran 6 commands ago?
- find the process number for your login and kill it
- now log back in

terms:
- recursive
- regular expressions, *

Installing stuff:
- tldr
- trans
- git prompt


Shell scripting:
- write saynl.sh, chmod so you can run it, check with ll, is ~/bin in your path?

mkdir public_html, and place index.html style.css and interaction.js in it.

Digital Ocean instance:

- sudo to edit main web page on instance to add a link to your own  (you'll need to find the root password from another clue)

Pi:

- create another user account
