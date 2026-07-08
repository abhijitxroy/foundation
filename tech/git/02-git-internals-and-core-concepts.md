# Git Internals & Core Concepts

## Overview

Understanding Git internals explains why Git is fast, reliable, and capable of managing complex development workflows. Engineers who understand Git's internal architecture make better decisions when debugging repository issues, resolving conflicts, recovering history, and designing collaboration workflows.

## Definition

Git is a distributed version control system that stores project history as a directed acyclic graph (DAG) of immutable objects. Rather than tracking file differences directly, Git stores snapshots of the repository and links them through commits.

## Objectives

- Understand Git's storage model.
- Learn how repositories are organized.
- Understand commit history.
- Explain how branches and tags work internally.
- Build confidence when troubleshooting Git.

## Repository Architecture

```text
Working Tree
      │
      ▼
Staging Area (Index)
      │
      ▼
Local Repository
      │
      ▼
Remote Repository
```

## Core Git Objects

| Object | Purpose |
|--------|---------|
| Blob | Stores file contents. |
| Tree | Represents directories and file hierarchy. |
| Commit | Records a snapshot and metadata. |
| Tag | Marks important commits such as releases. |

## Core Concepts

| Concept | Description |
|---------|-------------|
| HEAD | Points to the current commit or branch. |
| Index | Staging area for the next commit. |
| Working Tree | Files currently being edited. |
| Repository | Database containing Git objects and history. |
| Ref | Named pointer to a commit (branches and tags). |
| DAG | Commit graph representing repository history. |

## How Git Stores History

```text
Commit D
   │
Commit C
   │
Commit B
   │
Commit A
```

Each commit references its parent commit, creating an immutable history graph.

## Best Practices

- Understand the difference between the working tree, index, and repository.
- Stage changes intentionally.
- Create logical commits.
- Keep commit history meaningful.
- Understand repository state before performing advanced operations.

## Common Mistakes

- Confusing the index with the working tree.
- Using commands without understanding repository state.
- Modifying history on shared branches without coordination.
- Ignoring how Git objects relate to commits.

## Interview Focus

Be prepared to explain:

- How Git stores data.
- Blob, Tree, Commit, and Tag objects.
- HEAD, Index, Working Tree, and Refs.
- Why Git uses a DAG.
- Why Git operations are generally fast.

## Related Topics

- Version Control Foundations
- Branching & Collaboration
- Merging, Rebasing & History Management
- Advanced Git Techniques

## Next

Continue with **03-branching-and-collaboration.md** to learn how Git enables safe parallel development and efficient team collaboration.
