# Day 2: Linux File Permissions — 5-Minute Presentation

## 1. Introduction

Linux file permissions control who can read, modify, and execute files and directories.

## 2. Permission Categories

* User (`u`): file owner.
* Group (`g`): users belonging to the assigned group.
* Others (`o`): remaining users.
* Permissions: read (`r`), write (`w`), and execute (`x`).

## 3. Numeric Permissions

* `chmod 600 file`: owner can read and write.
* `chmod 700 file`: owner can read, write, and execute.
* `chmod a+r file`: adds read permission for everyone.
* Numeric values: read = 4, write = 2, execute = 1.

## 4. User and Group Information

* `whoami` displays the current username.
* `id` displays UID, GID, and group membership.
* `ls -l` displays permissions and ownership.

## 5. Umask

The observed umask was `0022`.

* New files typically receive `644` permissions.
* New directories typically receive `755` permissions.

## 6. Practical Demonstration

I created a test file, changed permissions using `chmod 600` and `chmod 700`, tested symbolic permissions with `chmod a+r`, and executed a shell script.

## 7. DevOps Relevance

Correct permissions help protect deployment scripts, configuration files, application data, and server resources.

## Conclusion

Understanding Linux permissions is essential for secure server administration and DevOps automation.

