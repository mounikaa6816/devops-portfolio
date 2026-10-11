# Day 2 — Linux File Permissions and User Management

## 1. Linux Permission Types

* `r` — Read permission.
* `w` — Write permission.
* `x` — Execute permission.
* Permissions apply to the owner, group, and others.

## 2. Viewing Permissions

* `ls -l` displays file permissions, owner, group, size, and modification time.
* `whoami` displays the current username.
* `id` displays the user ID, primary group, and supplementary groups.

## 3. Numeric Permissions

* `chmod 600 file` gives the owner read and write permissions.
* `chmod 700 file` gives the owner read, write, and execute permissions.
* Permission values: read = 4, write = 2, execute = 1.

## 4. Symbolic Permissions

* `chmod a+r file` adds read permission for all categories.
* `chmod u+x file` adds execute permission for the owner.
* `chmod g-w file` removes write permission from the group.
* `chmod o-r file` removes read permission from others.

## 5. Shell Script Execution

* A shell script can contain commands and print output.
* `chmod 700 script.sh` gives the owner full permissions and removes group/other access.
* `./script.sh` executes the script when its permissions and contents allow it.

## 6. User and Group Information

* `whoami` identifies the current user.
* `id` displays UID, GID, and group membership.
* `chown` changes ownership when authorized.
* `chgrp` changes group ownership when authorized.

## 7. Umask and Default Permissions

* `umask` displays the permission mask.
* The observed mask was `0022`.
* With this mask, new files typically receive mode `644`.
* New directories typically receive mode `755`.

## DevOps Relevance

File permissions and ownership help protect application files, deployment scripts, server configuration, and automation workflows.

## Practice Completed

Practiced `chmod`, `ls -l`, `whoami`, `id`, `umask`, file creation, directory creation, and shell script execution.

