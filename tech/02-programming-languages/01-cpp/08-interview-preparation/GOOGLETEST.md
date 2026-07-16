# Modern C++ - GoogleTest Notes

> This file captures GoogleTest concepts that are important for Modern C++, production systems, and AMD SMTS interview preparation.

---

## What is the Goal?

The goal is NOT to memorize GoogleTest macros.

The goal is to learn:

- How to think about testing.
- How to write maintainable tests.
- How to discuss testing strategies.
- How to debug failing tests.
- How testing fits into CI/CD pipelines.

---

## Testing Mindset

Always ask:

```text
What should be tested?
        ↓
Happy Path?
        ↓
Negative Scenarios?
        ↓
Boundary Conditions?
        ↓
Failure Cases?
        ↓
Can this be automated?
```

Good tests focus on behaviour rather than implementation details.

### Three Layer Testing Model

Always think in three layers:

```text
Technical Impact
      ↓
Engineering Impact
      ↓
Business Impact
```

Examples:

```text
Better Test Coverage
      ↓
Higher Code Quality
      ↓
Fewer Production Issues
      ↓
Faster Releases
      ↓
Better Customer Experience
```

Testing discussions should not stop at writing assertions. Think about production quality and engineering productivity.

---

## Start With Simple Questions

```text
What is failing?
       ↓
Code Problem?
       ↓
Test Problem?
       ↓
Environment Problem?
       ↓
Build Problem?
       ↓
CI/CD Problem?
```

Never assume the production code is always wrong.

---

## Topics We Will Cover

### Fundamentals

- Unit Testing
- Assertions
- Test Cases
- Test Suites
- Fixtures

### Intermediate Topics

- Parameterized Tests
- Test Organization
- Test Reusability
- Mocking Concepts

### Advanced Topics

- CI/CD Integration
- Build System Integration
- Test Failures and Debugging
- Production Testing Discussions

---

## Production Thinking

Always think:

```text
Can this fail?
       ↓
Can I test it?
       ↓
Can I automate it?
       ↓
Can I reproduce failures?
       ↓
Can I debug failures?
```

Testing is an important part of production-quality software.

### Production Quality Thinking

Ask yourself:

```text
Can this fail in production?
        ↓
Can we reproduce it?
        ↓
Can we automate the test?
        ↓
Can we debug failures efficiently?
        ↓
Can we prevent regressions?
```

The goal is not merely passing tests. The goal is building reliable and maintainable production systems.

---

## Interview Pattern

Always answer:

```text
What is being tested?
       ↓
Why is it important?
       ↓
How would you test it?
       ↓
How would you automate it?
       ↓
How would you debug failures?
```

Interviewers care more about your testing approach than memorized syntax.

### Senior Interview Communication

Prefer discussing:

- Requirements.
- Constraints.
- Trade-offs.
- Testing strategies.
- Production failures.
- CI/CD integration.
- Maintainability.

Avoid focusing only on GoogleTest macros and syntax during interviews.

---

## AMD SMTS Focus Areas

High Priority:

- Unit Testing
- GoogleTest Fundamentals
- Test Design
- CI/CD Integration
- Production Testing Discussions
- Debugging Test Failures
- Build System Integration

### SMTS Thinking Model

Whenever possible discuss:

```text
Testing Strategy
        ↓
Automation Strategy
        ↓
Debugging Strategy
        ↓
CI/CD Integration
        ↓
Production Quality
        ↓
Engineering Productivity
```

Senior engineers are expected to reason about the complete testing lifecycle rather than individual test cases.

---

## Repository Philosophy

Remember:

> Good tests are simple, readable and maintainable.

Prefer:

```text
Understand
 ↓
Design
 ↓
Implement
 ↓
Test
 ↓
Debug
 ↓
Automate
 ↓
Maintain
```

---

## Biggest Learnings

Remember:

- Good tests are readable.
- Good tests are maintainable.
- Good tests are reproducible.
- Good tests are easy to debug.
- Good tests improve engineering productivity.
- Good tests improve release confidence.

GoogleTest is only a tool. Production quality thinking is the actual goal.

## Status

- Coverage: Foundational GoogleTest Patterns
- Preparation Status: In Progress
- Difficulty: Beginner to Senior-Level Thinking