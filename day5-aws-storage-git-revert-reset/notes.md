# Day 5: AWS Storage & Git Revert and Reset

## Part 1: AWS Storage - Amazon S3

1. Amazon S3 (Simple Storage Service) is an object storage service.
2. Data in S3 is stored as objects inside buckets.
3. S3 bucket names must be globally unique within an AWS partition.
4. S3 storage classes support different access patterns and cost requirements.
5. IAM policies and bucket policies help control access to stored data.
6. Block public access unless public access is specifically required.
7. Consider storage, requests, data transfer, and applicable charges before using AWS services.

## Part 2: Git Revert

1. git revert creates a new commit that reverses changes from an earlier commit.
2. It preserves the existing commit history.
3. It is generally suitable for undoing changes in shared branches.
4. Use git log --oneline to identify a commit.
5. Review and test the repository after reverting.

Example: git revert <commit-hash>

## Part 3: Git Reset

1. git reset moves the current branch reference to a selected commit.
2. git reset --soft moves HEAD and keeps changes staged.
3. git reset --mixed moves HEAD and unstages changes while keeping working-tree changes.
4. git reset --hard resets the index and working tree; uncommitted changes can be lost.
5. Use reset carefully, especially on shared history.

## Part 4: Revert vs Reset

- Revert creates a new commit to undo an earlier commit.
- Reset moves the branch reference to another commit.
- Revert is generally safer for shared history.
- Reset is useful for local history changes when used carefully.

## Lab Safety

- Check git status before modifying history.
- Verify backups before using git reset --hard.
- Check AWS billing before creating resources.
- Never upload AWS credentials or secret keys to GitHub.

## Day 5 Evidence Checklist

- [ ] Document AWS S3 concepts.
- [ ] Practise git revert in a safe test repository.
- [ ] Practise git reset in a safe test repository.
- [ ] Capture terminal screenshots.
- [ ] Review documentation before pushing to GitHub.
