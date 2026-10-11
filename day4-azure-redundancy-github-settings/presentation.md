# Day 4 — Azure Storage Redundancy and GitHub Repository Settings
## 5-Minute Presentation

### 1. Introduction
Today I explored Azure Storage Account redundancy and GitHub repository settings.

### 2. Azure Storage Redundancy
Redundancy helps protect stored data against infrastructure failures.

### 3. Types of Redundancy
- LRS: Maintains multiple copies within a single physical location.
- ZRS: Replicates data across availability zones within a region.
- GRS: Replicates data to a secondary region.
- GZRS: Combines zone redundancy in the primary region with replication to a secondary region.

### 4. Azure Practical
- Opened the existing Storage Account.
- Observed its location and replication configuration.
- Confirmed the replication setting as Locally Redundant Storage (LRS).
- Reviewed Configuration settings without changing them.
- Considered the cost implications of redundancy choices.

### 5. GitHub Repository Settings
Repository settings help manage repository configuration and collaboration.

- General settings contain repository configuration options.
- The default branch is the base branch for normal comparisons and pull requests.
- Wikis can be used for documentation.
- Issues can track bugs, tasks, and improvements.

### 6. Practical Demonstration
- Opened the personal GitHub repository.
- Navigated to Settings → General.
- Observed the default branch as `main`.
- Reviewed feature settings without changing the repository configuration.

### 7. DevOps Relevance
Storage redundancy supports data resilience in cloud environments. GitHub repository settings help maintain organized and manageable software projects.

### Conclusion
This lab covered cloud storage resilience concepts and repository organization settings.
