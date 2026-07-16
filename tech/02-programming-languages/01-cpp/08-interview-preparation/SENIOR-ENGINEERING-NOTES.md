# AMD SMTS (Lead Quality Platform Engineering) - Notes

> This file is NOT a Modern C++ notes file. It captures AMD SMTS specific interview preparation notes collected throughout the learning journey.

---

## What is the Goal?

The goal is NOT to become a C++ architect.

The goal is to become interview ready for:

- AMD SMTS
- Platform Engineering
- Engineering Quality
- Debugging
- GoogleTest
- Build Systems
- Modern C++
- Production Thinking

---

## AMD Focus Areas

```text
Modern C++
      ↓
Debugging
      ↓
GoogleTest
      ↓
Build Systems
      ↓
Platform Engineering
      ↓
CI/CD
      ↓
Production Thinking
      ↓
Leadership Discussions
```

---

## Senior-Level Thinking

Always think:

```text
Problem
 ↓
Requirements
 ↓
Constraints
 ↓
Trade-offs
 ↓
Technology Selection
 ↓
Production Considerations
 ↓
Maintainability
```

Do not immediately jump to the technology.

---

### Three Layer Thinking Model

For every design decision, interview answer, or trade-off discussion think in three layers:

```text
Technical Impact
      ↓
Engineering Impact
      ↓
Business Impact
```

Examples:

```text
Build Performance
      ↓
Developer Productivity
      ↓
CI/CD Performance
      ↓
Faster Feedback Loop
      ↓
Release Velocity
      ↓
Infrastructure Cost
      ↓
Engineering Efficiency
```

Avoid stopping at only the technical implementation details.

---

### Interview Thinking Framework

Always try to reason in the following order:

```text
WHAT?
 ↓
WHY?
 ↓
HOW?
 ↓
BENEFITS?
 ↓
ENGINEERING IMPACT?
 ↓
BUSINESS IMPACT?
```

Do not immediately jump to syntax or implementation details.

---

## Modern C++ Focus Areas

High Priority:

- Object Lifetime
- Memory Management
- RAII
- Smart Pointers
- Move Semantics
- STL
- Concurrency
- Exception Handling
- CMake
- Build Systems

Medium Priority:

- Templates
- Lambdas
- constexpr
- enum class

---

## Debugging Topics

We will gradually cover:

- Build failures
- Compiler errors
- Linker errors
- Memory leaks
- Segmentation faults
- Undefined Behaviour
- Core dumps
- Threads and synchronization issues

---

## GoogleTest Topics

We will gradually cover:

- Unit testing
- Assertions
- Fixtures
- Parameterized tests
- Mocking concepts
- Test organization
- CI/CD integration

---

## Build System Topics

We will gradually cover:

- CMake
- Static libraries
- Shared libraries
- Build pipelines
- Dependency management
- Release engineering concepts

---

## Interview Expectations

Interviewers usually expect:

- Clear communication.
- Production thinking.
- Trade-off discussions.
- Problem-solving skills.
- Debugging ability.
- Good Modern C++ fundamentals.

You do NOT need to know every feature of Modern C++.

---

### Interview Communication Notes

Prefer:

- Better suited for.
- Preferred when.
- Depends on requirements.
- Depends on constraints and trade-offs.

Avoid:

- Java is better.
- C++ is better.
- This technology is always faster.

Senior engineers usually communicate requirements, trade-offs, and impacts rather than absolute statements.

---

## Repository Philosophy

```text
Learn
 ↓
Understand
 ↓
Remember
 ↓
Think
 ↓
Apply
 ↓
Interview Ready
```

Remember:

> Easy > Layered > Connected > Interview Ready.

---

## Personal Learning Notes

### Biggest Strengths

- WHY-driven reasoning.
- Systems thinking.
- Problem-solving mindset.
- Ability to connect concepts with production systems.

### Biggest Improvement Areas

- Breadth of thinking.
- Correct C++ terminology.
- Answering exactly what was asked.
- Knowing when to stop at the appropriate level of detail.

### Learning Philosophy

Remember:

```text
Mental Models
      ↓
Concepts
      ↓
Production Thinking
      ↓
Interview Communication
      ↓
SMTS Thinking
      ↓
Interview Ready
```

The goal is NOT to memorize Modern C++. The goal is to build correct mental models and communicate like a Senior/SMTS engineer during interviews.

## Status

- Preparation Status: In Progress
- Target Role: AMD SMTS
- Learning Approach: Beginner to Senior-Level Thinking