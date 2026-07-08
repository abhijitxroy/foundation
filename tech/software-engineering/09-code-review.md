# Code Review

## Overview

Code review is a collaborative engineering practice that improves software quality, reduces defects, shares knowledge, and ensures consistency across a codebase. It is not simply a gate for approving changes—it is an opportunity to strengthen both the software and the engineering team.

## Definition

Code review is the structured examination of proposed code changes by one or more engineers before those changes are merged into the main codebase.

The goal is to verify correctness, maintainability, security, readability, performance, and alignment with engineering standards.

## Objectives

- Improve software quality.
- Detect defects early.
- Share engineering knowledge.
- Enforce coding standards.
- Reduce long-term technical debt.

## Code Review Workflow

```text
Implement Change
       │
       ▼
Self Review
       │
       ▼
Automated Validation
       │
       ▼
Pull Request
       │
       ▼
Peer Review
       │
       ▼
Feedback & Discussion
       │
       ▼
Update Changes
       │
       ▼
Approval & Merge
```

## Review Checklist

| Area | Review Focus |
|------|--------------|
| Correctness | Does the implementation solve the intended problem? |
| Design | Is the solution maintainable and aligned with architecture? |
| Readability | Is the code easy to understand? |
| Security | Are common security risks addressed? |
| Performance | Are there unnecessary bottlenecks? |
| Testing | Are appropriate tests included or updated? |
| Documentation | Are relevant documents and comments updated? |

## Best Practices

- Review small pull requests.
- Focus on constructive feedback.
- Explain the reasoning behind suggestions.
- Automate repetitive checks.
- Separate style issues from design discussions.
- Review for long-term maintainability, not just immediate correctness.

## Common Mistakes

- Reviewing only formatting.
- Delaying reviews for long periods.
- Treating reviews as personal criticism.
- Approving without understanding the change.
- Ignoring architecture and non-functional requirements.

## Interview Focus

Be prepared to explain what you look for during a code review, how you provide constructive feedback, and how reviews improve engineering quality, knowledge sharing, and production reliability.

## Related Topics

- Coding Standards
- Documentation
- Version Control
- Software Quality
- Refactoring

## Next

Continue with **10-software-quality.md** to understand how engineering teams systematically build and maintain high-quality software.
