# Linux Basics — Day 1

## 1. Navigation Commands

* `pwd` displays the current working directory.
* `ls` lists files and directories.
* `cd` changes the current directory.
* `hostname` displays the system's hostname.
* `uname -a` displays kernel and system information.

## 2. File and Directory Management

* `mkdir` creates directories.
* `mkdir -p` creates parent directories when needed.
* `touch` creates an empty file or updates its timestamp.
* `cp` copies files.
* `mv` moves or renames files.
* `rm` removes files.
* `rmdir` removes empty directories.

## 3. Reading and Editing Files

* `cat` displays file contents.
* `nano` is a terminal-based text editor.
* `vi` is a terminal-based text editor.
* Save changes and verify the contents using `cat`.

## 4. Searching for Files

* `find` searches for files and directories.
* Example: `find . -maxdepth 3 -type f -print`
* This command lists files within the specified directory depth.

## 5. Disk Usage

* `df -h` displays filesystem space in human-readable units.
* `du -sh directory-name` displays the total size of a directory.

## 6. Package Management

* `apt --help` displays APT usage information.
* `apt search tree` searches available package descriptions.
* `sudo apt update` refreshes package indexes and requires administrative privileges.

## 7. Privileges and System Information

* `sudo` executes commands with elevated privileges when authorized.
* `whoami` displays the current username.
* `sudo whoami` should display `root` when authentication succeeds.
* `uname -a` and `hostname` help identify the environment.

## DevOps Relevance

Linux commands are fundamental to server administration, troubleshooting, automation, application deployment, and CI/CD workflows.

## Practice Status

Commands practiced: navigation, file operations, text editors, file search, disk usage, system information, and APT help/search.

Note: Administrative authentication was unsuccessful during this practice session. Successful sudo execution has not been verified in this session.
