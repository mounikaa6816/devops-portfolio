#!/bin/bash

echo "===== Day 2: Linux Permissions Lab ====="

echo ""
echo "Current user:"
whoami

echo ""
echo "User and group information:"
id

echo ""
echo "Current umask:"
umask

echo ""
echo "File permissions:"
ls -l permission-demo.txt permission-demo.sh default-file.txt

echo ""
echo "Directory permissions:"
ls -ld default-dir

echo ""
echo "Shell script permissions:"
ls -l permission-demo.sh

echo ""
echo "Executing the demo script:"
./permission-demo.sh

echo ""
echo "===== Day 2 Lab Complete ====="

