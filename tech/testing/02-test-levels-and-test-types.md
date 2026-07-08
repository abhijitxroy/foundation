# Test Levels & Test Types

## Overview

Software systems are validated progressively rather than through a single test. Different testing levels verify different aspects of the software, while different test types evaluate specific quality characteristics. Understanding both enables engineering teams to build comprehensive, risk-based testing strategies.

## Definition

Test Levels define **where** testing is performed during software development.

Test Types define **what** aspect of the software is being evaluated.

Together, they provide complete coverage across the software development lifecycle.

## Objectives

- Validate software progressively.
- Detect defects at the appropriate level.
- Reduce integration and production risks.
- Improve software quality.
- Build confidence before release.

## Testing Levels

```text
Unit
  │
  ▼
Integration
  │
  ▼
System
  │
  ▼
End-to-End
  │
  ▼
Acceptance
```

## Test Levels

| Level | Purpose |
|--------|---------|
| Unit Testing | Validate individual components in isolation. |
| Integration Testing | Verify interactions between components. |
| System Testing | Validate the complete integrated system. |
| End-to-End Testing | Simulate real user workflows across systems. |
| Acceptance Testing | Confirm the software satisfies business requirements. |

## Common Test Types

| Test Type | Purpose |
|-----------|---------|
| Functional Testing | Verify expected functionality. |
| Regression Testing | Ensure existing features continue working after changes. |
| Smoke Testing | Validate critical functionality after a build or deployment. |
| Sanity Testing | Verify that a specific change works as expected. |
| Performance Testing | Measure responsiveness and scalability. |
| Security Testing | Identify security weaknesses. |
| Usability Testing | Evaluate user experience. |
| Compatibility Testing | Verify operation across supported platforms. |
| Reliability Testing | Evaluate system stability over time. |

## Choosing the Right Test

| Situation | Recommended Testing |
|-----------|---------------------|
| New function | Unit + Integration |
| New API | Integration + Functional |
| New release | Regression + Smoke |
| Production deployment | Smoke + Monitoring |
| Performance optimization | Performance Testing |
| Security-sensitive feature | Security Testing |
| Major user workflow | End-to-End + Acceptance |

## Best Practices

- Execute lower-level tests first.
- Automate repetitive testing.
- Keep unit tests fast and isolated.
- Minimize unnecessary end-to-end tests.
- Build a balanced testing strategy.
- Continuously evaluate testing effectiveness.

## Common Mistakes

- Depending only on end-to-end testing.
- Writing too many slow UI tests.
- Ignoring integration testing.
- Confusing smoke and sanity testing.
- Using regression testing as a substitute for good design.
- Testing everything with the same approach.

## Interview Focus

Be prepared to explain:

- Unit vs Integration Testing
- System vs End-to-End Testing
- Smoke vs Sanity Testing
- Regression Testing
- Functional vs Non-functional Testing
- How different test levels complement each other

## Related Topics

- Testing Foundations
- Test Design Techniques
- Test Automation
- Continuous Testing

## Next

Continue with **03-test-design-techniques.md** to learn how effective test cases are designed using structured engineering techniques.
