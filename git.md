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
