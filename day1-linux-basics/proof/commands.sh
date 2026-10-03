#!/bin/bash

echo "===== Linux Basics Day 1 ====="

echo "Current directory:"
pwd

echo "Directory contents:"
ls

echo "Detailed listing:"
ls -la

echo "Kernel information:"
uname -a

echo "Hostname:"
hostname

echo "IP information:"
hostname -I

echo "Filesystem usage:"
df -h

echo "Current directory disk usage:"
du -sh .

echo "===== Linux Basics Day 1 Complete ====="
