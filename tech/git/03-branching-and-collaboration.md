# Branching & Collaboration

## Overview

Branching allows engineers to develop features, fix defects, experiment with ideas, and prepare releases without disrupting the stability of the main codebase. Combined with structured collaboration workflows, branching enables teams of any size to work in parallel while maintaining software quality and delivery speed.

## Definition

A branch is a movable reference to a sequence of commits. Branching and collaboration define how engineers organize work, integrate changes, review code, and manage concurrent development within a shared repository.

## Objectives

- Enable parallel development.
- Isolate unfinished work.
- Reduce integration risk.
- Support efficient collaboration.
- Maintain a stable main branch.

## Collaboration Workflow

```text
Main Branch
      │
      ▼
Create Feature Branch
      │
      ▼
Implement Changes
      │
      ▼
Commit Frequently
      │
      ▼
Push Branch
      │
      ▼
Pull Request
      │
      ▼
Code Review
      │
      ▼
Merge
      │
      ▼
Delete Feature Branch
```

## Common Branching Strategies

| Strategy | Best Suited For |
|----------|------------------|
| Feature Branch | General product development |
| Git Flow | Scheduled releases and maintenance |
| Trunk-Based Development | High-frequency continuous delivery |
| Fork Workflow | Open-source and external collaboration |
| Release Branch | Preparing production releases |
| Hotfix Branch | Urgent production fixes |

## Collaboration Principles

- Keep branches short-lived.
- Commit small, logical changes.
- Rebase or merge regularly to reduce conflicts.
- Review code before integration.
- Protect shared branches.
- Resolve conflicts promptly.

## Best Practices

- Name branches consistently.
- Keep pull requests focused.
- Synchronize frequently with the main branch.
- Automate validation through CI.
- Delete merged branches to keep repositories clean.

## Common Mistakes

- Long-lived feature branches.
- Large pull requests.
- Delayed integration.
- Direct commits to protected branches.
- Ignoring merge conflicts until late.
- Mixing unrelated work in a single branch.

## Interview Focus

Be prepared to explain feature branching, Git Flow, trunk-based development, fork workflows, merge conflict resolution, and how branching strategies support different delivery models.

## Related Topics

- Version Control Foundations
- Git Internals & Core Concepts
- Merging, Rebasing & History Management
- Code Review Workflows
- Release & Version Management

## Next

Continue with **04-merging-rebasing-and-history.md** to understand how Git integrates changes while preserving a clean and understandable project history.
