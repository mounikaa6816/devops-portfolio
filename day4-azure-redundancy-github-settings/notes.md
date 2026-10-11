# Day 4 — Azure Storage Account Redundancy and GitHub Repository Settings

## Part 1: Azure Storage Account Redundancy

### Key Concepts

* Azure Storage redundancy helps protect data against hardware failures and other infrastructure failures.
* Locally Redundant Storage (LRS) maintains multiple copies of data within a single physical location.
* Zone-Redundant Storage (ZRS) replicates data across availability zones within a region.
* Geo-Redundant Storage (GRS) replicates data to a secondary region.
* Geo-Zone-Redundant Storage (GZRS) combines zone redundancy in the primary region with replication to a secondary region.
* Redundancy choice can affect availability, resilience, and cost.

### Practical Steps Completed

1. Opened the existing Azure Storage Account `itascodeday1mounika`.
2. Inspected the Overview page.
3. Observed the account location as `centralindia`.
4. Observed the replication setting as `Locally redundant storage (LRS)`.
5. Opened Settings → Configuration and reviewed the available configuration options.
6. Captured a screenshot of the Configuration page.

### Observed Configuration

* Account kind: StorageV2 (general purpose v2)
* Performance: Standard
* Replication: Locally redundant storage (LRS)
* Secure transfer required: Enabled
* Blob anonymous access: Disabled

### Cost and Safety

* Reviewed the existing account without changing its redundancy configuration.
* Avoided creating another Storage Account for this lab.
* Existing resources should not be deleted without confirming their purpose.

## Part 2: GitHub Repository Organization Settings

### Key Concepts

* Repository settings control repository configuration and features.
* The default branch is the base branch used for normal comparisons and pull requests.
* Wikis provide a place for repository documentation.
* Issues can be used to track tasks, bugs, and improvements.
* Repository settings should be changed only when there is a clear requirement.

### Practical Steps Completed

1. Opened the personal repository `mounikaa6816/devops-portfolio`.
2. Opened Settings → General.
3. Observed the repository name as `devops-portfolio`.
4. Observed the default branch as `main`.
5. Reviewed the Wiki and Issues feature settings.
6. Captured a screenshot of the General Settings page.
7. Left repository settings unchanged.

## DevOps Relevance

Storage redundancy supports resilience and data protection in cloud infrastructure. GitHub repository settings support organized collaboration, version control, and maintainable project workflows.


