# Day 3 — Azure Storage and Git Local/Remote Repositories

## Part 1: Azure Storage

### Key Concepts
- Azure Storage provides cloud storage services.
- A Storage Account is the main resource for accessing Azure Storage services.
- Blob Storage stores unstructured data such as text files, images, documents, and backups.
- A container organizes blobs inside Blob Storage.
- A blob is an object stored inside a container.
- Private access prevents anonymous public access to container data.

### Practical Steps Completed
1. Opened the Azure Portal.
2. Opened the existing Storage Account `itascodeday1mounika`.
3. Opened Data storage and Containers.
4. Created a container named `lab-container`.
5. Selected Private access.
6. Created a sample text file on the local computer.
7. Uploaded the sample file to the container.
8. Inspected the uploaded blob properties.

### Blob Properties Observed
- Blob type: Block blob
- Content type: text/plain
- Server encrypted: true
- Access tier: Hot (Inferred)

## Part 2: Git Local and Remote Repositories

### Key Concepts
- A local repository stores Git history on the local computer.
- A remote repository is hosted on a service such as GitHub.
- `git status` displays the current working-tree state.
- `git branch --show-current` displays the active branch.
- `git remote -v` displays configured remote repositories.
- `git add` stages changes.
- `git commit` saves staged changes to local Git history.
- `git push` uploads commits to a remote repository.
- `git pull` fetches and integrates remote changes.

### Current Repository Details
- Day 3 branch: `day3-azure-storage-github-mounika`
- Personal remote name: `origin`
- Personal repository: `mounikaa6816/devops-portfolio`

## DevOps Relevance
Azure Blob Storage can store application files, backups, and other unstructured data. Git and GitHub support version control, collaboration, and traceable changes to code and configuration.

## Evidence Checklist
- [ ] Capture the Storage Account overview.
- [ ] Capture the `lab-container` container page.
- [ ] Capture the uploaded blob and its properties.
- [ ] Capture Git command output.
- [ ] Push Day 3 documentation to the personal GitHub repository.
