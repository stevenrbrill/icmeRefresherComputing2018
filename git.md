# Introduction to Git
(Some of this information is borrowed from CME 257, taught by Brad Nelson: https://github.com/icme/cme257-advanced-julia/blob/master/class/class4/class4.md)

## What is Git?
What is git?  It is a version control system.  This enables:
* periodic saving of work (called *committing*)
* returning to old versions when a problem is introduced
* creation of experimental code *branches* with out disturbing the main or working code
* *merging* the concurrent work of independent developers
* *remote* backup and storage of work
* tracking a *log* of project history

Git is not the only tool used for version control, although it is one of the most popular.  Others include
* CVS (Concurrent Versioning System)
* SVN (Subversion)
* HG (Mercurial)

## Git Resources
* Git homepage: http://git-scm.com/
* Git documentation: http://git-scm.com/doc
* Git Book: http://git-scm.com/book/en/v2

## GitHub
While git is a method of version control and backing up files, they still need to be hosted somewhere. GitHub is one of he most common hosts for remote git repositories (BitBucket is another). Instead of using either of these services, you could set up a remote repository on a private server. GitHub and BitBucket allow you to work privately (with paid or student account) or share your projects with the world, like I am doing with these notes.

## Git Commands
* `git clone <url>` - Create a copy of a remote repository on your machine
* `git init` - Create a new local repository
* `git add <file>` - Add file to staging to begin tracking
* `git reset <file>` - Remove a file from staging, `--hard <commit>` will reset the file to its state at the given commit. 
* `git rm <file>` - Stop tracking the file
* `git commit <file>` - Save changes to local repository, `-a` will commit all changes, `-m "<message>"` will add the commit message
* `git push` - Send changes to the master branch of the remote repository
* `git status` - List the files you've changed
* `git pull` - Fetch and merge remote changes into your local repository
* `git log` - Show change history
* `gitk` - Open a GUI that functions as a log and a status
* `git diff` - Show difference between local repository and remote
* `git branch` - Print available branches
* `git branch <branch name>` - Create a new branch
* `git checkout <branch name>` - Switch to branch
* `git checkout master` - Switch to master branch
* `git merge <branch name>` - Merges the branch with the active branch
* `git mergetool` - Tool to help resolve merge conflicts
* `.gitignore` - File that tells git to ignore certain files

Commit numbers
Graph view
Remote projects
Open source
gitignore
changing history
Links
Bas
