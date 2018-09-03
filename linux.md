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
Now we will begin to go over the basic Linux commands and how to use them

* `echo <arg>` - Print arguments to display
* `ls <dir>` - List contents in directory, `-l` list format, `-t` time, newest first, `-a` all entries
* `pwd` - Print the path to the current directory
* `cd <dir>` - Change to the directory, if no directory is listed, it will go to home directory
* `mkdir <dir>` - Make directory
* `rmdir <dir>` - Remove directory
* `.` - Current directory
* `..` - Parent directory
* `~` - Home directory
* `touch <file>` - Create empty file
* `cat <file>` - Print file
* `head <file>` - Print the first 10 lines of the file, `-n <lines>` Print the first n lines
* `tail <file>` - Print the last 10 lines of the file, `-n <lines>` Print the last n lines
* `less <file>` - Read a file in a "less" view
* `cp <old> <new>` - Copy file, `-i` Interactive, prompt before overwriting, `-r` Recursive, copy all files within
* `mv <old> <new>` - Move file, `-i` Interactive, prompt before overwriting
* `rm <file>` - Remove file, `-i` Interactive, prompt before removing, `-r` Recursive, remove all files within, `-f` Force, do not ask before removing file
* `*` - Wildcard, any number of characters
* `?` - Wildcard, exactly one character
* `man <command>` - Get manual page, `--help` or `-h` usually work as well
* Up on keyboard - Goes through last commands
* Tab on keyboard - Autofill with commands/files available
* `history` - Shows command history
* `exit` - Exits the terminal
* `ssh <user>@<servername>` - Single shell sign in, logs onto that system, `-X` or `-Y` enable X11 forwarding for interactive windows
* `scp <old> <new>` - Copies a file from one computer to another. One of the directories will be of the form `<user>@<location>:<path to file>` and it will usually ask for your password
* `<command> &` - Run command in background
* `<command1> && <command2>` - Run both commands at once
* `<command> > <file>` - Redirect the output of the command to a new file
* `<command> >> <file>` - Redirect the output of the command to the end of a file
* `<command> | <command>` - Pipe the output to another program
* `grep <string> <file>` - Search for string in file, `-i` ignore case, `-r` Recursive, search in subdirectories
* `top` - Shows processes that are running
* `locate <file>` - Search for the file
* `tar -czvf <tar file> <files>` - Zip a tar file
* `tar -xzvf <tar file>` - Unzip a tar file
* `chmod <arguments> <file>` - Change the permission of read, write, and execute access on a file
* `clear` - Clears the terminal

## Paths in Linux
In Linux, when you are doing a command with a file, you must give a path to the file. The can be done using an **absolute path** or a **relative path**. As the names imply, absolute paths are paths that always get to the correct location, while relative paths are paths to the location from wherever you currently are. Whenever you use `pwd`p that gives the absolute path to the current directory. Absolute paths start with a `/`. Relative paths, start in your current location. If the first part of the path is `.` then it is a relative path. By default, if you start typing a path from your current directory, it will be a relative path. For most basic command line uses, these paths are equivalent. However, for more advanced uses, such as installing software, absolute paths must be used.

## Bashrc

## Text Editors


