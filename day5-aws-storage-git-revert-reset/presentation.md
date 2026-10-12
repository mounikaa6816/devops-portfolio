# Day 5 Presentation: AWS Storage & Git Revert and Reset

## 1. Introduction
Today's lab covers Amazon S3 object storage and two Git commands used to undo changes: revert and reset.

## 2. Amazon S3
Amazon S3 is an AWS object storage service. Data is stored as objects inside buckets.

Key concepts:
- Buckets organize stored objects.
- Objects contain data and metadata.
- Storage classes support different access and cost requirements.
- IAM and bucket policies control access.
- Public access should remain blocked unless explicitly required.

Diagram:

User/Application
      |
      v
   S3 Bucket
      |
      v
     Objects

## 3. Git Revert
The git revert command creates a new commit that reverses the changes from an earlier commit.

Example:
git log --oneline
git revert <commit-hash>

Use revert when you want to undo a change while preserving the shared commit history.

## 4. Git Reset
The git reset command moves the current branch reference to a selected commit.

- --soft: keeps changes staged.
- --mixed: keeps changes in the working tree but unstages them.
- --hard: resets the index and working tree and can discard uncommitted changes.

Use reset carefully, particularly on shared branches.

## 5. Revert vs Reset

| Git Revert | Git Reset |
|---|---|
| Creates a new commit | Moves the branch reference |
| Preserves previous history | Changes the current branch position |
| Generally suitable for shared history | Often used for local history changes |

## 6. Cost and Security Awareness
Before creating AWS resources, check the account's billing and existing resources. Protect credentials and avoid unnecessary public access.

## 7. Conclusion
Amazon S3 provides object storage. Git revert safely records an undo operation as a new commit, while Git reset moves the branch reference and requires more caution.

## Demo Status
Concepts documented. Hands-on Git demonstrations and screenshots must be completed before marking the lab finished.
