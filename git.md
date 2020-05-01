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
* `git add --patch <file>` - Interactively go through file and choose changes to stage
* `git reset <file>` - Remove a file from staging, `--hard <commit>` will reset the file to its state at the given commit. 
* `git rm <file>` - Stop tracking the file
* `git commit <file>` - Save changes to local repository, `-a` will commit all changes, `-m "<message>"` will add the commit message
* `git push` - Send changes to the master branch of the remote repository
* `git pull` - Fetch and merge remote changes into your local repository
* `git status` - List the files you've changed
* `git log` - Show change history
* `gitk` - Open a GUI that functions as a log and a status
* `git diff` - Show difference between local repository and remote
* `git branch` - Print available branches
* `git branch <branch name>` - Create a new branch
* `git checkout <branch name>` - Switch to branch
* `git checkout master` - Switch to master branch
* `git merge <branch name>` - Merges the branch with the active branch
* `git mergetool` - Tool to help resolve merge conflicts
* `git checkout <commit number>` - Revert code back to the state it was at that commit number, this is a temorary change
* `.gitignore` - File that tells git to ignore certain files

## Advanced Commands Used in Larger Projects
* `git rebase master` - Rebase branch with changse from master
* `git push -u origin <branch name>` - Push a local branch to the remote repository
* `git rebase -i HEAD~<number of commits>` - Interactively choose how to rebase a number of commits. Used to squash multiple commits into one
* `git reset --hard origin/master` - Reset your branch to be the same as origin/master. WARNING: This will remove all of your local commits.
* `git cherry-pcik <commit number>' - Merge a specific commit from another branch

## Basic Git Workflow
The basic Git workflow is as follows:
1. Create a repository by cloning from GitHub or intializing
    * `git clone <url>` - Create a copy of a remote repository on your machine
    * `git init` - Create a new local repository
2. Make new files and change old files
3. Add new files to staging
    * `git add <file>` - Add file to staging to begin tracking
3. Commit changes to files
    * `git commit <file>` - Save changes to local repository, `-a` will commit all changes, `-m "<message>"` will add the commit message
4. Push changes to remote repository
    * `git push` - Send changes to the master branch of the remote repository
5. Repeat

When other users make changes to the repository, you will need to use `git pull` to get those changes in your local repository
  
## Checking Changes
1. Checking staged changes
    * `git status` - List the files you've changed
2. Checking differences between repositorie
    * `git diff` - Show difference between local repository and remote
3. Checking change history
    * `git log` - Show change history
4. A tool for all of this
    * `gitk` - Open a GUI that functions as a log and a status
5. You can also edit the `.gitignore` file to make git ignore certain files or types of files that you don't want to track
  
## Branches, forks, and clones
One of the things I find most confusing about git is the different kinds of ways you can change a repository. 

A **clone** is a local copy of a repository. Here you can change the code locally as much as you like. If you have access to the repository (if it is your own or you are working with the people that maintain the respoitory), then you can directly push changes to the code base. If it is a bigger project, like an open source project, you can send a pull request to the maintainers and they will choose whether your changes get added to the main code base. This is the procedure documented above in the basic workflow.

A **branch** is a temporary version of the code that is usually used to implement a specific feature, which is later implemented into the master or main branch. This is good if you are working on multiple features at once and you don't want them to interact with each other during development. This also allows you to accidentally break the code with your new features and still have a working version available without having to revert back. Once a feature is completed, it can merged back into the master branch, from which it can be pushed to the remote repository. The general workflow for branches is:
1. Create a new branch
    * `git branch <branch name>` - Create a new branch
2. Make changes and commit those changes, like in the basic workflow
3. Move between branches to make changes where need
    * `git checkout <branch name>` - Switch to branch
    * `git checkout master` - Switch to master branch
    * `git branch` - Print available branches
4. Merge changes to master branch
    * `git merge <branch name>` - Merges the branch with the active branch
5. Resolve merge conflicts
    * Git does a resonable job of combining different branches, but there are often areas where it can't figure out how to merge the changes. In these places it leaves sections of `>>>>>>>>>>>>>>>>>>>>>` to indicate it doesn't know what to do. You can resolve these issues using any text editor or using the mergetool
    * `git mergetool` - Tool to help resolve merge conflicts
6. Commit the merged changes and merge again
7. Push changes to remote repository if desired

A **fork** is a method to copy a repository with the intention of creating a separate project from it. When you create a fork, you get the history fro mthe repository, but a new orgin/master is created from the split, so changes will not go back to the original repository. I have worked in places where we created a fork of the original code, made our changes, and then used a pull request to get them back into the original code, however this is generally not the workflow. The usual way to create a fork is to simply click the fork button on GitHub or whatever hosting site you are using. From there you can download the repository with clone like any other repository.

In conclusion, clones are local copies of the repository that you can work in, branches are versions of the code used for creating new features which are later combined into the original version, and forks are copies of the code designed to split off into a separate code. 

## Ways to think about Git
When you work in Git, especially with big projects with multiple developers, tracking all of the changes that are made and that state of your code can get confusing. To help with this, each commit has an associated commit number associated with that. This commit number can be used when reverting back to previous versions of the code. `git checkout <commit number>` does this temporarily and `git reset --hard <commit number>` will permanently revert back. `git log` will list all of the past changes and commit messages so that you can see what was done. `gitk` offers a more detailed view of this that also shows the changes to the files in each commit. 

The most common way to think of a git history is by using a directed acyclic graph. Branches, forks, and merges will create vertices and edges in the graph. This is a very powerful way to think about a repository and can often help solve confusions with how to resolve merge conflicts and other issues. Once again, `gitk` can help with this and show the graph view. We will not go into any more detail about this in this course, but for those that are interested in learning more, here is a link with some information. http://eagain.net/articles/git-for-computer-scientists/


