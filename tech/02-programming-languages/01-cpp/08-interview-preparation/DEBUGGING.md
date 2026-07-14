# Modern C++ - Debugging Notes

> This file captures debugging concepts that are important for Modern C++, production systems, and AMD SMTS interview preparation.

---

## What is the Goal?

The goal is NOT to memorize debugging commands.

The goal is to learn:

- How to think while debugging.
- How to identify failures systematically.
- How to debug production problems.
- How to discuss debugging approaches during interviews.

---

## Debugging Mindset

Always ask:

```text
What failed?
      ↓
When did it fail?
      ↓
Can I reproduce it?
      ↓
Build Time?
      ↓
Runtime?
      ↓
Memory Problem?
      ↓
Concurrency Problem?
      ↓
Root Cause?
```

Never start by guessing.

---

## Start With Simple Questions

```text
Compiler Error?
      ↓
Linker Error?
      ↓
Build Failure?
      ↓
Runtime Failure?
      ↓
Test Failure?
      ↓
Production Failure?
```

Classifying the problem correctly is often half of debugging.

---

## Production Thinking

Always think:

```text
What failed?
       ↓
Why did it fail?
       ↓
Can it happen again?
       ↓
Can we prevent it?
       ↓
Can we test it?
       ↓
Can we monitor it?
```

---

## Topics We Will Cover

### Build Failures

- Compiler errors
- Linker errors
- Dependency issues
- CMake problems

### Runtime Problems

- Crashes
- Exceptions
- Unexpected behaviour
- Resource management issues

### Memory Problems

- Memory leaks
- Dangling pointers
- Undefined behaviour
- Invalid memory access

### Concurrency Problems

- Race conditions
- Deadlocks
- Synchronization issues
- Thread-related problems

### Testing Problems

- GoogleTest failures
- Assertion failures
- Incorrect test assumptions
- CI/CD failures

---

## Interview Pattern

Always answer:

```text
Problem
 ↓
How did you identify it?
 ↓
How did you debug it?
 ↓
What was the root cause?
 ↓
How was it fixed?
 ↓
How did you prevent it from happening again?
```

Interviewers care more about your debugging process than memorized commands.

---

## AMD SMTS Focus Areas

High Priority:

- Build failures
- Compiler errors
- Linker errors
- Memory management problems
- GoogleTest failures
- CI/CD failures
- Production debugging discussions

---

## Repository Philosophy

Remember:

> Good debugging starts with asking good questions.

Prefer:

```text
Observe
 ↓
Understand
 ↓
Reproduce
 ↓
Debug
 ↓
Fix
 ↓
Validate
 ↓
Prevent
```

---

## Status

- Coverage: Foundational Debugging Patterns
- Preparation Status: In Progress
- Difficulty: Beginner to Senior-Level Thinking