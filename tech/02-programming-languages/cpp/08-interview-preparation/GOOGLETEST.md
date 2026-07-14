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

## Status

- Coverage: Foundational GoogleTest Patterns
- Preparation Status: In Progress
- Difficulty: Beginner to Senior-Level Thinking