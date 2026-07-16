# Modern C++ - Coding Patterns

> This file captures commonly used Modern C++ coding patterns that are useful for interviews, production code, and AMD SMTS preparation.

---

## What is the Goal?

### Three Layer Thinking Model

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
Better API Design
      ↓
Better Maintainability
      ↓
Higher Engineering Productivity
      ↓
Faster Development
      ↓
Better Production Quality
```

Senior engineers are expected to discuss more than syntax and implementations.

The goal is NOT to memorize syntax.

The goal is to learn:

- How to think while coding.
- How to write readable code.
- How to discuss design decisions.
- How to identify trade-offs.
- How to write production-quality code.

---

## Pattern 1 - Start Simple

### Senior Thinking Pattern

```text
WHAT?
 ↓
WHY?
 ↓
HOW?
 ↓
BENEFITS?
 ↓
TRADE-OFFS?
 ↓
ENGINEERING IMPACT?
 ↓
BUSINESS IMPACT?
```

Never jump immediately to language features or optimizations.

Always think:

```text
Problem
 ↓
Input
 ↓
Output
 ↓
Constraints
 ↓
Simple Solution
 ↓
Better Solution
 ↓
Production Solution
```

Never jump immediately to an optimized solution.

---

## Pattern 2 - Prefer Readability

Prefer:

```text
Easy to Read
      ↓
Easy to Maintain
      ↓
Easy to Debug
      ↓
Production Ready
```

Avoid:

```text
Clever Code
      ↓
Hard to Understand
      ↓
Hard to Maintain
```

---

## Pattern 3 - Think About Ownership

Always ask:

```text
Who owns this object?
        ↓
Who creates it?
        ↓
Who uses it?
        ↓
Who destroys it?
```

Later topics will answer this using:

- RAII
- Smart Pointers
- Move Semantics
- Rule of Five
- Rule of Zero

---

## Pattern 4 - Think About Performance

Always ask:

```text
Can I avoid copying?
        ↓
Can I avoid unnecessary allocations?
        ↓
Can I improve readability?
        ↓
What are the trade-offs?
```

Do not optimize prematurely.

### Performance Thinking

Always ask:

```text
Do we really need this optimization?
            ↓
What problem are we solving?
            ↓
What are the trade-offs?
            ↓
Will this improve production quality?
            ↓
Will this improve engineering productivity?
```

Prefer measurable improvements over premature optimizations.

---

## Pattern 5 - Think About Memory

Always ask:

```text
Stack or Heap?
       ↓
Who owns the memory?
       ↓
Can this leak?
       ↓
Can this become invalid?
```

Memory management is one of the most important Modern C++ topics.

---

## Pattern 6 - Think About APIs

Always ask:

```text
Should this value change?
       ↓
Use const?
       ↓
Should I copy it?
       ↓
Should I use a reference?
       ↓
How easy is this API to use?
```

---

## Pattern 7 - Debugging Mindset

Always ask:

```text
Compiler Error?
      ↓
Build Error?
      ↓
Linker Error?
      ↓
Runtime Error?
      ↓
Memory Problem?
```

Debugging is a major focus area for AMD SMTS interviews.

### Production Quality Thinking

Always ask:

```text
Can I test this?
       ↓
Can I debug this?
       ↓
Can I automate this?
       ↓
Can I prevent regressions?
       ↓
Can I maintain this easily?
```

Production-quality code is easier to test, debug, and maintain.

---

## Production Thinking

Prefer:

```text
Simple
 ↓
Readable
 ↓
Maintainable
 ↓
Testable
 ↓
Production Ready
```

Avoid:

```text
Complex
 ↓
Difficult to Understand
 ↓
Difficult to Debug
```

---

## Biggest Learnings

Remember:

- Prefer readability over cleverness.
- Prefer maintainability over unnecessary optimizations.
- Prefer production-quality thinking over syntax memorization.
- Prefer requirements and trade-offs discussions during interviews.
- Prefer simple and correct solutions before optimized solutions.

The goal is NOT to write the most clever Modern C++ code. The goal is to write understandable, maintainable, and production-quality code.

---

## Repository Philosophy

Remember:

> Good code is usually simple, readable and maintainable.

We are optimizing for:

- Modern C++
- Production Thinking
- Debugging Skills
- AMD SMTS Interviews
- Systems Thinking
- Platform Engineering Thinking
- Production Quality Engineering
- Senior Interview Communication
- AMD SMTS Preparation

---

## Status

- Coverage: Foundational Coding Patterns
- Preparation Status: In Progress
- Difficulty: Beginner to Senior-Level Thinking
