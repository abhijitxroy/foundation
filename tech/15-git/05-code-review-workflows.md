# Code Review Workflows

## Overview

Code review is the primary quality gate before changes become part of the shared codebase. A well-designed review workflow improves software quality, spreads knowledge across the team, reduces production defects, and ensures that engineering standards are consistently applied.

## Definition

A code review workflow is the structured process of submitting, reviewing, discussing, validating, approving, and integrating code changes before they are merged into the main branch.

The objective is to improve the change—not simply approve it.

## Objectives

- Improve software quality.
- Detect defects early.
- Share engineering knowledge.
- Enforce engineering standards.
- Reduce technical debt.
- Maintain a stable main branch.

## Review Workflow

```text
Implement Change
       │
       ▼
Local Validation
       │
       ▼
Push Branch
       │
       ▼
Open Pull Request
       │
       ▼
Automated CI Checks
       │
       ▼
Peer Review
       │
       ▼
Update Changes
       │
       ▼
Approval
       │
       ▼
Merge
```

## Review Checklist

| Area | Questions |
|------|-----------|
| Correctness | Does the implementation solve the intended problem? |
| Design | Is the solution aligned with the architecture? |
| Readability | Is the code easy to understand and maintain? |
| Testing | Are appropriate tests included or updated? |
| Security | Are common security risks addressed? |
| Performance | Does the change introduce unnecessary overhead? |
| Documentation | Are relevant documents updated? |

## Best Practices

- Keep pull requests small and focused.
- Review promptly.
- Provide constructive, evidence-based feedback.
- Automate formatting, linting, and testing.
- Separate style comments from design discussions.
- Approve only after understanding the change.

## Common Mistakes

- Very large pull requests.
- Delayed reviews.
- Approving without sufficient understanding.
- Focusing only on formatting.
- Mixing unrelated changes into one review.
- Ignoring CI failures.

## Interview Focus

Be prepared to explain how code review improves software quality, how review workflows integrate with CI/CD, what you typically look for during reviews, and how to provide effective engineering feedback.

## Related Topics

- Branching & Collaboration
- Merging, Rebasing & History Management
- Release & Version Management
- Software Engineering → Code Review

## Next

Continue with **06-release-and-version-management.md** to learn how Git supports structured software releases, versioning, and long-term maintenance.
