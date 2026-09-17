
# Linux System Administration Lab

## 1. Introduction

This lab was created to build a practical foundation in Linux system administration for DevOps and Cloud Engineering.

### Environment

- Operating System: Ubuntu
- Platform: WSL2
- Architecture: x86_64
- User: mounika
- Hostname: LAKSHMINAIDU
- Shell: Linux command line

The lab covers:

1. Linux system information
2. Filesystem and directory management
3. File creation and manipulation
4. File content and text searching
5. Users and groups
6. sudo and privileges
7. File permissions
8. Ownership
9. Shared directories
10. Process management
11. systemd and services
12. cron
13. Log management
14. Networking
15. DNS
16. SSH
17. Package management
18. Linux troubleshooting basics

---

# 2. Linux System Information

Before administering a Linux system, we need to know who we are, where we are, which machine we are using, and which operating system/kernel is running.

---

## 2.1 `whoami`

### Command

```bash
whoami
Purpose

Displays the username of the currently logged-in user.

Our result
mounika
Simple meaning

It answers:

Who am I currently logged in as?

DevOps use

Useful when checking which user is executing a command, especially while troubleshooting permission problems.

Remember
whoami = Who am I?
2.2 pwd
Command
pwd
Purpose

Displays the current working directory.

Our lab
/home/mounika/linux-admin-lab
Simple meaning

It tells us:

Where am I currently located in the filesystem?

Remember
pwd = Present Working Directory
2.3 hostname
Command
hostname
Purpose

Displays the name of the current machine.

Our result
LAKSHMINAIDU
DevOps use

When working with multiple servers, the hostname helps identify which server you are currently connected to.

2.4 uname -a
Command
uname -a
Purpose

Displays detailed information about the Linux kernel and system.

It can provide:

Kernel name
Hostname
Kernel version
Architecture
Our environment

The output showed:

Linux
WSL2
x86_64
Remember
uname = Unix/Linux system information
-a    = all information
2.5 /etc/os-release
Command
cat /etc/os-release
Purpose

Displays information about the Linux distribution.

Remember
/etc/os-release = Linux operating system information
3. Disk and Memory Management

A Linux administrator needs to monitor disk space and memory because insufficient resources can cause applications and services to fail.

3.1 df -h
Command
df -h
Purpose

Displays filesystem/disk usage.

Important columns include:

Filesystem
Size
Used
Avail
Use%
Mounted on
-h

Means:

human-readable

It displays sizes such as:

GB
MB
KB

instead of only raw values.

DevOps use

Useful for checking whether a server is running out of disk space.

Remember
df = disk/filesystem usage
-h = human-readable
3.2 free -h
Command
free -h
Purpose

Displays memory usage.

Important fields:

total
used
free
available

It also shows swap usage.

-h

Means human-readable.

DevOps use

Useful for checking memory pressure and troubleshooting applications consuming excessive RAM.

Remember
free = memory information
4. Linux Filesystem

Linux organizes everything in a hierarchical filesystem beginning with /.

Important directories include:

/
├── home
├── etc
├── var
├── opt
├── tmp
├── usr
├── bin
└── root
Important directories
/home → user home directories
/etc  → configuration files
/var  → variable data and logs
/opt  → optional/additional software
/tmp  → temporary files
/usr  → user-space programs and libraries
/root → root user's home directory
5. File and Directory Management
5.1 ls
Command
ls
Purpose

Lists files and directories in the current directory.

5.2 ls -la
Command
ls -la
Purpose

Displays detailed information about files and directories, including hidden files.

Options
-l = long/detailed format
-a = all files including hidden files

The output can show:

File type
Permissions
Owner
Group
Size
Modification time
Filename
Remember
ls     = list
ls -l  = detailed list
ls -a  = include hidden files
ls -la = detailed + hidden files
5.3 cd
Command
cd directory-name
Purpose

Changes the current working directory.

Example:

cd ~/linux-admin-lab
Remember
cd = change directory
5.4 mkdir
Command
mkdir test
Purpose

Creates a directory.

Example:

mkdir networking
Remember
mkdir = make directory
5.5 touch
Command
touch file.txt
Purpose

Creates an empty file if it does not already exist.

It can also update a file's timestamp.

Remember
touch = create file / update timestamp
5.6 cp
Command
cp file.txt backup/
Purpose

Copies a file.

Example
file.txt
   |
   ↓
backup/file.txt
Remember
cp = copy
5.7 mv
Command
mv old.txt new.txt
Purpose

Moves or renames a file.

Example

Moving:

mv file.txt backup/

Renaming:

mv old.txt new.txt
Remember
mv = move / rename
5.8 rm
Command
rm file.txt
Purpose

Deletes a file.

Important

rm normally does not move the file to a recycle bin.

Therefore, use it carefully.

Remember
rm = remove
6. File Content and Text Processing
6.1 cat
Command
cat notes.txt
Purpose

Displays the contents of a file.

Remember
cat = display file contents
6.2 Output Redirection >
Command
echo "Hello" > notes.txt
Purpose

Sends command output into a file.

If the file already contains data, > overwrites the existing content.

Remember
> = overwrite
6.3 Output Redirection >>
Command
echo "Another line" >> notes.txt
Purpose

Adds the output to the end of the file.

Existing content remains unchanged.

Remember
>> = append
Important difference
>  = overwrite
>> = append
6.4 grep
Command
grep "ERROR" server.log
Purpose

Searches for matching text.

For example, this searches server.log for the word ERROR.

DevOps use

grep is frequently used for:

Searching application logs
Finding errors
Filtering output
Troubleshooting
Remember
grep = search/filter text
7. Users and Groups

Linux is a multi-user operating system.

Users and groups are important for access control and security.

7.1 id
Command
id
Purpose

Displays information about the current user.

Important terms:

UID = User ID
GID = Group ID

It also displays group membership.

7.2 Lab User

We created a test user:

devopsuser
Verify
id devopsuser

The lab user had:

UID = 1001
Why create a test user?

To practice real Linux administration tasks without using the main account for everything.

7.3 groups
Command
groups devopsuser
Purpose

Displays the groups to which a user belongs.

Our lab user belonged to:

devopsuser
devops
8. Linux Groups

We created a group:

devops

and added:

devopsuser

to it.

Why use groups?

Imagine a team with:

user1
user2
user3

Instead of assigning permissions individually, we can put them into:

devops

and assign permissions to the group.

Example:

             devops group
                  |
        ---------------------
        |         |         |
      user1     user2     user3
                  |
                  ↓
          Shared resources
DevOps relevance

Group-based access control is commonly used on Linux servers to manage team access to shared resources.

9. sudo and Privileged Access
sudo
Example
sudo apt update
Purpose

Allows an authorized user to execute a command with elevated privileges.

Some operations require administrative/root privileges.

Example operations
Installing packages
Changing system configuration
Managing services
Changing ownership of protected files
Remember
sudo = execute with elevated privileges
Security principle

Use elevated privileges only when required.

10. Linux File Permissions

Linux permissions determine who can access a file or directory.

There are three permission categories:

OWNER | GROUP | OTHERS

There are three basic permissions:

r = read
w = write
x = execute
10.1 Read
r

Allows reading file contents.

10.2 Write
w

Allows modifying file contents.

10.3 Execute
x

For files, it allows execution when applicable.

For directories, execute permission is related to entering/traversing the directory.

10.4 Understanding permission output

Example:

-rwxr-xr-x

Breakdown:

- | rwx | r-x | r-x
    |     |     |
  owner group others

The first character:

- = regular file
d = directory
11. Permission Numbers

Linux permissions can be represented numerically.

Values:

read    = 4
write   = 2
execute = 1

Therefore:

7 = 4 + 2 + 1 = rwx
6 = 4 + 2     = rw-
5 = 4 + 1     = r-x
4 = 4         = r--
3 = 2 + 1     = -wx
2 = 2         = -w-
1 = 1         = --x
0 = ---       = no permission
11.1 Common permission combinations
600 = rw-------
644 = rw-r--r--
755 = rwxr-xr-x
770 = rwxrwx---

These are very common Linux permission values.

12. chmod
What is chmod?

chmod means:

change mode

It changes file or directory permissions.

12.1 chmod 600
Command
chmod 600 permissions-demo.txt

Result:

-rw-------

Meaning:

Owner  → read + write
Group  → no access
Others → no access
12.2 chmod 644
Command
chmod 644 permissions-demo.txt

Result:

-rw-r--r--

Meaning:

Owner  → read + write
Group  → read
Others → read
12.3 chmod 755
Command
chmod 755 permissions-demo.txt

Result:

-rwxr-xr-x

Meaning:

Owner  → read + write + execute
Group  → read + execute
Others → read + execute
Remember
chmod → change permissions
13. chown
What is chown?

chown means:

change ownership
Command used
sudo chown mounika:devops permissions-demo.txt
Meaning

The command changes:

Owner = mounika
Group = devops
Verify
ls -l permissions-demo.txt
General syntax
chown user:group file
Remember
chmod → permissions
chown → ownership
14. Shared Directory

We created:

/opt/devops-shared

Configuration:

Owner       = root
Group       = devops
Permissions = 770
Verify
ls -ld /opt/devops-shared

Expected permission structure:

drwxrwx---
770 means
Owner  → rwx
Group  → rwx
Others → ---
Why did we create this?

To practice group-based access control.

The devops group can access the shared directory, while users outside the group do not receive access through these permissions.

DevOps relevance

Shared directories are common on Linux servers for:

Team resources
Application files
Deployment artifacts
Shared data
15. Process Management

A process is a running instance of a program.

Linux can run many processes simultaneously.

15.1 ps aux
Command
ps aux
Purpose

Displays currently running processes.

Important columns:

USER
PID
%CPU
%MEM
COMMAND
PID
PID = Process ID

Every running process has a process ID.

DevOps use

Useful for identifying:

High CPU processes
High memory processes
Running applications
Background processes
15.2 ps aux | head
Command
ps aux | head
Purpose

Displays the first few lines of the process list.

Pipe |

The pipe sends the output of one command into another command.

Concept:

ps aux
   |
   ↓
  head
Remember
| = pipe
16. systemd and Services

Modern Ubuntu systems use systemd to manage many services.

A service is a background program that performs a specific function.

16.1 List services
Command
systemctl list-units --type=service --no-pager
Purpose

Lists loaded system services.

16.2 Check service status
Command
systemctl status cron --no-pager

Our lab verified:

cron.service
Active: active (running)
Meaning

The cron service is currently running.

17. cron

cron is a Linux service used for scheduled tasks.

Examples of scheduled tasks:

Every hour
Every day
Every week
DevOps relevance

Scheduled automation is common in infrastructure and system administration.

18. Linux Logs

Logs record events and activities occurring on the system.

They are extremely important for troubleshooting.

18.1 journalctl
Command
journalctl -n 20 --no-pager
Purpose

Displays recent systemd journal logs.

18.2 Service-specific logs
Command
journalctl -u cron -n 20 --no-pager
Meaning

Shows recent logs specifically for the cron service.

Option
-u = specific systemd unit/service
18.3 /var/log

Many traditional Linux log files are stored under:

/var/log

Check:

ls -lah /var/log
Remember
journalctl → systemd journal
/var/log    → Linux log files
DevOps troubleshooting flow

If an application or service fails:

Application failure
       ↓
Check service status
       ↓
Check logs
       ↓
Identify error
       ↓
Fix configuration/problem
       ↓
Verify service
19. Networking

Networking is a major part of DevOps.

We need to understand:

Interfaces
IP addresses
Connectivity
Ports
DNS
HTTP/HTTPS
20. ip addr
Command
ip addr
Purpose

Displays network interfaces and IP addresses.

Our WSL environment showed:

Interface = eth0
IPv4      = 172.18.25.117/20
Important concepts
eth0 = network interface
IP address = address assigned to the interface
Remember
ip addr → inspect network interfaces and IP addresses
21. ping
Command
ping -c 4 google.com
Purpose

Tests basic network connectivity.

Option
-c 4 = send 4 packets
Remember
ping → basic connectivity test
Important

A successful ping can demonstrate connectivity, but it does not prove that a particular application or TCP port is working.

22. curl
Command
curl -I https://example.com
Purpose

Tests HTTP/HTTPS connectivity and retrieves response headers.

Option
-I = headers only
DevOps uses

curl is commonly used for:

API testing
Health checks
Web-server testing
HTTP troubleshooting

Example concept:

Client
  |
  | HTTPS
  ↓
Web Server
  |
  ↓
HTTP Response
23. ss
Command
ss -tuln
Purpose

Displays network sockets and listening ports.

Options
-t = TCP
-u = UDP
-l = listening
-n = numeric output

Our WSL environment showed DNS-related listeners on port:

53
Why check ports?

Ports help determine which services are listening for network connections.

DevOps use

Useful for troubleshooting:

Application not reachable
        ↓
Is service running?
        ↓
Is port listening?
        ↓
Is network/firewall allowing traffic?
Remember
ss → inspect sockets and ports
24. DNS

DNS stands for:

Domain Name System

DNS converts domain names into IP addresses.

Example:

google.com
     ↓
    DNS
     ↓
IP address
24.1 getent
Command
getent hosts google.com
Purpose

Checks hostname resolution.

DevOps use

Useful when troubleshooting:

Website unavailable
API unavailable
Cloud service unreachable
Repository cannot be resolved

Possible cause:

DNS resolution failure
Remember
getent hosts → check hostname resolution
25. SSH

SSH stands for:

Secure Shell

SSH is used to securely connect to remote systems.

Typical DevOps scenario:

Your computer
      |
      | SSH
      ↓
Linux Cloud VM
25.1 Check SSH client
Command
ssh -V
Purpose

Displays the installed SSH client version.

Our Ubuntu environment has an OpenSSH client installed.

Lab note

We did not install an SSH server because it was not required for this WSL lab.

DevOps use

SSH is commonly used to connect to:

Cloud Linux VMs
Remote servers
Kubernetes nodes
Infrastructure machines
26. Package Management

Ubuntu uses APT for package management.

APT is used to:

Refresh package information
Install software
Remove software
Manage packages
26.1 apt update
Command
sudo apt update
Purpose

Refreshes package information from configured repositories.

Important

apt update does not mean upgrading all installed packages.

It refreshes the package metadata.

26.2 List installed packages
Command
apt list --installed
Purpose

Displays installed packages.

26.3 Install a package
Command
sudo apt install package-name

Example:

sudo apt install tree
Remember
apt update  → refresh package information
apt install → install software
27. tree
Command
tree ~/linux-admin-lab
Purpose

Displays files and directories in a tree structure.

Our lab structure:

linux-admin-lab/
├── filesystem/
├── networking/
├── permissions/
├── processes/
└── users/
Why useful?

It provides a quick visual overview of the project structure.

28. Important Linux Symbols
/       = root directory
~       = current user's home directory
.       = current directory
..      = parent directory
|       = pipe
>       = overwrite
>>      = append
29. Absolute vs Relative Paths
Absolute Path

An absolute path starts from /.

Example:

/home/mounika/linux-admin-lab

It provides the complete path from the root directory.

Relative Path

A relative path starts from the current directory.

Example:

filesystem/notes.txt

It depends on the current working directory.

30. Important Command Differences
chmod vs chown
chmod → changes permissions
chown → changes ownership
> vs >>
>  → overwrite
>> → append
df vs free
df   → disk/filesystem usage
free → memory usage
ps vs systemctl
ps        → running processes
systemctl → services/systemd units
ping vs curl
ping → basic network connectivity
curl → HTTP/HTTPS communication
IP vs DNS
IP  → identifies a network endpoint
DNS → resolves names to IP addresses
31. Linux Permission Cheat Sheet
Permission values:

r = 4
w = 2
x = 1

Common permissions:

600 = rw-------
644 = rw-r--r--
755 = rwxr-xr-x
770 = rwxrwx---

Remember:

Owner | Group | Others
32. Linux Administration Troubleshooting Flow

When something is not working, use a systematic approach.

Step 1 — Check user
whoami
id
Step 2 — Check location
pwd
ls -la
Step 3 — Check permissions
ls -l
Step 4 — Check process
ps aux
Step 5 — Check service
systemctl status service-name
Step 6 — Check logs
journalctl -u service-name
Step 7 — Check network
ip addr
ping
Step 8 — Check ports
ss -tuln
Step 9 — Check DNS
getent hosts domain.com
Step 10 — Test HTTP/HTTPS
curl -I https://example.com

This gives a basic structured troubleshooting methodology.

33. Lab Directory Structure

The Linux lab was organized as:

linux-admin-lab/
│
├── filesystem/
│   ├── backup/
│   │   └── notes.txt
│   ├── notes.txt
│   └── server.log
│
├── networking/
│
├── permissions/
│   ├── permissions-demo.txt
│   └── secret.txt
│
├── processes/
│
└── users/
Important GitHub note

secret.txt is a temporary practice file and should NOT be uploaded to GitHub.

Never upload:

passwords
API keys
access keys
tokens
.env files
SSH private keys
.bash_history
personal files
cloud credentials
34. DevOps Connection

The Linux skills from this lab form the foundation for the rest of the DevOps roadmap.

Linux
  ↓
Git & GitHub
  ↓
Cloud
  ↓
Docker
  ↓
CI/CD
  ↓
Terraform
  ↓
Kubernetes
  ↓
Monitoring
  ↓
Production Infrastructure

Linux is used underneath many DevOps technologies.

Linux is used with:
AWS EC2
Azure Virtual Machines
Docker
Kubernetes
Jenkins
GitHub Actions
Terraform
Ansible
Nginx
Apache
Prometheus
Grafana
35. Quick Revision Cheat Sheet
Command	Meaning
whoami	Current user
pwd	Current directory
hostname	Machine name
uname -a	Kernel/system information
cat /etc/os-release	OS information
ls	List files
ls -la	Detailed list + hidden files
cd	Change directory
mkdir	Create directory
touch	Create file
cp	Copy
mv	Move/rename
rm	Remove
cat	Display file
grep	Search text
df -h	Disk usage
free -h	Memory usage
id	User/group information
groups	Group membership
sudo	Elevated privileges
chmod	Change permissions
chown	Change ownership
ps aux	Running processes
systemctl	Service management
journalctl	Systemd logs
ip addr	IP/interfaces
ping	Connectivity
curl	HTTP/HTTPS testing
ss	Ports/sockets
getent	Name/DNS resolution
ssh	Secure remote connection
apt	Package management
tree	Directory structure
36. Final Learning Outcome

After completing this lab, I have practiced the fundamental Linux administration skills required for DevOps and Cloud environments.

Skills practiced
Linux system inspection
Filesystem navigation
File and directory management
Text processing
Users and groups
sudo
File permissions
Ownership
Shared directory access
Process management
systemd
Service management
cron
Log analysis
Networking
DNS
SSH fundamentals
Package management
Basic troubleshooting
Key principle
Understand the system
        ↓
Check the configuration
        ↓
Check permissions
        ↓
Check processes/services
        ↓
Check logs
        ↓
Check networking
        ↓
Test and verify
