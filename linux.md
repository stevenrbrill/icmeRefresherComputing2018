# Introduction to Linux/Unix

## What are Unix/Linux?
Linux and Unix are both operating systems. Unix was originally developed by AT&T Bell Labs and is a proprietary operating system that is used mainly in servers and mainframes today. It primarily involes the command line interface and is designed to work with specific hardware. As Unix was being developed, many competing versions with similar philosophies were developed as well. Linux is an open source operating system based on Unix, but not directly decended from it. Mac OS, is a descendant of the BSD family of Unix. Linux uses both command line interfaces and GUIs and is compatible with most hardware. Since Linux is open source, anyone can go into the code any modify it for whatever they want. Because of this, there are a number of different Linux distributions or versions of the Linux operating systems. Some examples are
* Redhat
* Debian
* ArchLinux
* Ubuntu
* CentOS
* Fedora
* Mint

Now although Linux and Unix are different, from a user's perspective, they are about the same. The commands for both are nearly the same. POSIX standards mean that Unix software will work on Linux. Hence, I will use the terms interchangeably. 

## Basic Linux Commands
Now we will begin to go over the basic Linux commands and how to use them. We will got through some interactive exercises on Farmshare later, but here is a list of commonly used Linux commands sorted by general function

### General Commands
* `echo <arg>` - Print arguments to display
* `man <command>` - Get manual page, `--help` or `-h` usually work as well
* Up on keyboard - Goes through last commands
* Tab on keyboard - Autofill with commands/files available
* `history` - Shows command history
* `exit` - Exits the terminal
* `clear` - Clears the terminal
* `ssh <user>@<servername>` - Single shell sign in, logs onto that system, `-X` or `-Y` enable X11 forwarding for interactive windows
* `./<executable` - Runs executable

### Directory and Filename shortcuts
* `.` - Current directory
* `..` - Parent directory
* `~` - Home directory
* `*` - Wildcard, any number of characters
* `?` - Wildcard, exactly one character


### Directories and Navigation
* `ls <dir>` - List contents in directory, `-l` list format, `-t` time, newest first, `-a` all entries
* `pwd` - Print the path to the current directory
* `cd <dir>` - Change to the directory, if no directory is listed, it will go to home directory
* `mkdir <dir>` - Make directory
* `rmdir <dir>` - Remove directory

### File Manipulation
* `touch <file>` - Create empty file
* `cat <file>` - Print file
* `head <file>` - Print the first 10 lines of the file, `-n <lines>` Print the first n lines
* `tail <file>` - Print the last 10 lines of the file, `-n <lines>` Print the last n lines
* `less <file>` - Read a file in a "less" view
* `cp <old> <new>` - Copy file, `-i` Interactive, prompt before overwriting, `-r` Recursive, copy all files within
* `mv <old> <new>` - Move file, `-i` Interactive, prompt before overwriting
* `rm <file>` - Remove file, `-i` Interactive, prompt before removing, `-r` Recursive, remove all files within, `-f` Force, do not ask before removing file
* `scp <old> <new>` - Copies a file from one computer to another. One of the directories will be of the form `<user>@<location>:<path to file>` and it will usually ask for your password

### Modules
* `module list` - Lists modules
* `module avail` - Lists all available modules
* `module load <module name>` - Load the selected module

### Output and Runtime Control
* `<command> &` - Run command in background
* `<command1> && <command2>` - Run both commands at once
* `<command> > <file>` - Redirect the output of the command to a new file
* `<command> >> <file>` - Redirect the output of the command to the end of a file
* `<command> | <command>` - Pipe the output to another program

### Advanced Topics
* `grep <string> <file>` - Search for string in file, `-i` ignore case, `-r` Recursive, search in subdirectories
* `locate <file>` - Search for the file
* `tar -czvf <tar file> <files>` - Zip a tar file
* `tar -xzvf <tar file>` - Unzip a tar file
* `chmod <arguments> <file>` - Change the permission of read, write, and execute access on a file
* `top` - Shows processes that are running


## Paths in Linux
In Linux, when you are doing a command with a file, you must give a path to the file. The can be done using an **absolute path** or a **relative path**. As the names imply, absolute paths are paths that always get to the correct location, while relative paths are paths to the location from wherever you currently are. Whenever you use `pwd` that gives the absolute path to the current directory. Absolute paths start with a `/`. Relative paths, start in your current location. If the first part of the path is `.` then it is a relative path. By default, if you start typing a path from your current directory, it will be a relative path. For most basic command line uses, these paths are equivalent. However, for more advanced uses, such as installing software, absolute paths must be used.

## Bashrc
A `.bashrc` is a shell script that runs everytime you start a new bash session, like when you open a new terminal. This file can be found at `~/.bashrc` and you can edit it if you want certain commands to run at startup. This allows you to change different settings for your terminals, load certain modules on startup, and create aliases. With many Linux systems, there is a default Bashrc that comes with the OS. You can also look online to find examples of various settings that you may want. I personally, don't change too much with the different settings that can be changed in the Bashrc. When I have been working on research codes that require specific modules, I often put the `module load` statements in the Bashrc, so I don't have to do it manually every time. The most common and useful part of the Bashrc is adding alias. An **alias** is a command name that you set in place of typing out a full command. You can think of it as a variable that represents a longer command. This can save time if you have long commands, or you can use it to essentially change the default behavior of a command. For example, I use the aliases:
```
alias cp='cp -i' # prompt before overwriting file
alias mv='mv -i' # prompt before overwriting file
alias rm='rm -i' # prompt before removing file
alias ls='ls --color=auto'
````
Which make the prompts appear everytime I remove a file. This makes it so I can't accidentally delete files, since I have accidentally deleted entire projects in the past.

## Text Editors
When working in the terminal, it is often easier/necessary to use a terminal based text editor. The simplest of these is `nano` which lists all of the commands at the bottom on the screen. While `nano` is useful when you're getting started or if you use the terminal very sparingly, I strongly recommend you learn how to at least do basic commands in one of the more advanced text editors: `vim` or `emacs`. Which of these text editors you learn to use is largely a choice of personal preference and is in most cases determined by whatever you learn first. They both have a large number of special key combinations that can allow you to move through and edit documents very quickly. However, one must learn all of the relevant commands and be able to deal with unexpected things happening when errant keys are pressed, which can be intimidating to new users. In addition to the powerful built in commands, both editors have ways to modify and create your own commands. In fact, `emacs` is actually a turing complete language. In terms of choosing between the two, I think `vim` is less friendly to the new user, because you can't even type text when you open it. Also, I have heard the programmability and using packages for `emacs` has a lot benefits. However, I personally use `vim` and know more people that use `vim`. As opposed to going into details on the specifics of each of these editors, I am going to leave some links to the basic commands in each editor and you can experiment with them and ask questions later.

In addition to these command line text editors, there are a number of good GUI based editors that I would recommend. Sublime Text, Notepad++, and Atom are the three that I personally recommend. They are all similar and have various packages for specific languages and applications, allow for project files to be viewed together, and some can even be used like and IDE.

* Vim basics - https://www.howtoforge.com/vim-basics
* Full Vim cheatsheet - http://tnerual.eriogerg.free.fr/vimqrc.pdf
* Emacs basics - http://mally.stanford.edu/~sr/computing/emacs.html
* Full Emacs cheatsheet - https://www.ast.cam.ac.uk/~vasily/idl/emacs_commands_list.html
* Atom - https://atom.io/
* Sublime Text - https://www.sublimetext.com/
* Notepad++ - https://notepad-plus-plus.org/

## Slurm
Slurm is a job scheduler that is implemented in Farmshare and many of the other clusters on campus. This judiciously allocates computing resources to users. There are a few ways to use it. If you just want to connect to a private computer so you can run programs with computing with other users, simply use the following command to request that:
```
srun --pty --qos=interactive $SHELL -l
```
When you have an interactive node, once you close the session, you will lose the node and your work will stop.

If you want to run a code that will take a long time that you don't want to leave your computer on for, then you will want to submit a batch job. To do this, you will need to write a submit script. The full options for Slurm script can be found at https://slurm.schedmd.com/pdfs/summary.pdf but the basic format is something like
```
#!/bin/bash

#SBATCH -J test               # Job name
#SBATCH -o job.%j.out         # Name of stdout output file (%j expands to jobId)
#SBATCH -N 1                  # Total number of nodes requested
#SBATCH -n 24                 # Total number of mpi tasks requested
#SBATCH -t 01:30:00           # Run time (hh:mm:ss) 

module load <module>

<command to run your code>

```
This file will be called `filename.slurm`. You can specify a job name, where to save the output, number of nodes, time on the computer, what type of nodes, and many other options. Once these are all specified, put the commands that you want to run below. This job is submitted to the job queue with the command
```
sbatch filename.slurm
```
Once your job is submitted, you can use `squeue` to check if it is runnning or still waiting in the queue. Once it is finished running all of your commands or you reach the time limit that you selected, the script will stop running and you will have your output. There are a lot more options about Slurm scripts that I haven't covered here. If you intend to use them regularly, I highly recommend you talk to the administrators of whatever cluster you are using, as they will have plenty of tips and examples for the specific cluster.
