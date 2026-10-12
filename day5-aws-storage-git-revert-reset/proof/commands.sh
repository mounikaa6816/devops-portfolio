#!/usr/bin/env bash
# Day 5: Git Revert and Reset practice
# Run only inside a disposable test repository.

# Inspect repository status and history
git status --short --branch
git log --oneline

# Undo a commit while preserving history
git revert HEAD

# Reset modes - use only in the temporary practice repository
git reset --soft HEAD~1
git reset --mixed HEAD~1

# Destructive command: intentionally commented out
# git reset --hard HEAD~1
