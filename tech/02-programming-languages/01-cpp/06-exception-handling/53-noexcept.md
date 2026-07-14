# 53. noexcept

## Topic Overview
- Importance: ★★★★★ MUST KNOW
- Interview Frequency: High
- Estimated Study Time: 45-60 Minutes

## Why Should You Learn This Topic?
`noexcept` allows developers to explicitly express that a function is not expected to throw exceptions. It communicates failure guarantees clearly, enables compiler optimizations in many situations, and plays an important role in Modern C++ design decisions. Understanding `noexcept` is essential for writing production-quality and exception-safe C++ code.

## Learning Objectives
- Understand what `noexcept` is.
- Learn why it exists.
- Understand failure guarantees.
- Recognize common production scenarios.
- Prepare for exception-oriented interview questions.

## Beginner Level – What is noexcept?
Simply put:

> `noexcept` means a function promises that it will not throw exceptions.

For example:

```cpp
void work() noexcept
{
}
```

Think of `noexcept` as saying:

```text
This Function
      ↓
Will Not Throw Exceptions
      ↓
Failure Guarantee
```

## Why Does noexcept Exist?
Modern applications frequently need to communicate:
- Failure guarantees.
- API expectations.
- Resource-management decisions.
- Performance characteristics.

`noexcept` exists to provide:
- Clearer APIs.
- Better maintainability.
- Improved optimizations in many situations.
- Better exception-safety guarantees.

## Real World Analogy
Imagine booking a cab.

```text
Driver A
--------
May Cancel Anytime.


Driver B
--------
Guaranteed Pickup.
```

Which guarantee communicates expectations more clearly?

Similarly, `noexcept` communicates important guarantees regarding function behaviour.

## Java Developer's Corner
Java developers commonly think about:

```java
throws Exception
```

Modern C++ asks a different question:

> Can this operation fail at all?

If the answer is:

```text
No
↓
noexcept may communicate that
more clearly.
```

## Simple Examples

### Basic Example

```cpp
void logMessage() noexcept
{
}
```

### Another Example

```cpp
int getVersion() noexcept
{
    return 1;
}
```

For beginners, focus less on the syntax and more on understanding the guarantee being expressed.

## Engineer Level Thinking
Whenever you design an API, ask:

1. Can this operation fail?
2. Should exceptions ever occur here?
3. Can `noexcept` communicate intent more clearly?
4. Will exception guarantees improve maintainability?
5. Can the implementation remain correct if requirements change?

Modern C++ strongly encourages developers to communicate intent clearly.

## Production Examples
`noexcept` is commonly useful for:
- Utility functions.
- Resource-management operations.
- Performance-sensitive code.
- Platform engineering tooling.
- Move operations.
- Library development.

Clear failure guarantees significantly improve API design.

## Production Bug Example

```text
Problem
-------
Developers are uncertain whether
an API can fail.

Question
--------
Can failure guarantees be expressed
more clearly?

Root Cause
----------
Unclear API Contracts.
```

## Debugging Perspective

```text
Problem
-------
An unexpected exception causes
application termination.

Ask
---
1. Can this operation legitimately fail?
2. Should exceptions be possible here?
3. Is noexcept appropriate?
4. Is the API contract clearly documented?
5. Can failure handling be simplified?
```

## AMD SMTS Perspective
This is a MUST KNOW interview topic.

Interviewers may ask:
- What is `noexcept`?
- Why does `noexcept` exist?
- When should it be used?
- What guarantees does it provide?
- Why are clear API contracts important?

### Why Should I Care as a Platform Engineer?
- Improves API design decisions.
- Improves maintainability.
- Frequently appears in Modern C++ interviews.
- Reinforces exception-safety concepts.
- Encourages clearer failure guarantees.

## What Would a Senior Engineer Do?

```text
Junior Engineer
---------------
How do I write noexcept?

        ↓

Mid Level Engineer
-----------------
Can this API fail?

        ↓

Senior Engineer
---------------
Should this operation ever throw
exceptions at all?

Can noexcept express intent
more clearly?

Will the API contract remain
clear and maintainable?
```

## Modern C++ Failure Philosophy

```text
try / catch
      ↓
Handle Failures.

noexcept
      ↓
Express Failure Guarantees.

Exception Safety
      ↓
Remain Correct After Failures.
```

## Common Mistakes
- Using `noexcept` without understanding the guarantees being made.
- Ignoring API design considerations.
- Treating `noexcept` as merely an optimization feature.
- Treating exception handling as merely an interview topic.

## Common Confusions

### Confusion 1

> Is `noexcept` only about performance?

No.

Its primary purpose is communicating failure guarantees clearly. Performance improvements are an additional benefit in many situations.

### Confusion 2

> Should every function use `noexcept`?

No.

Only functions that genuinely provide such guarantees should use it.

## Interview Questions
1. What is `noexcept`?
2. Why does it exist?
3. When should it be used?
4. Why are failure guarantees important?
5. How does `noexcept` improve API design?

## Senior Engineer Questions
1. Can this operation legitimately fail?
2. Should exceptions ever occur here?
3. Is `noexcept` appropriate for this API?
4. Can failure guarantees improve maintainability?
5. Can the implementation remain exception safe?

## Interview Traps
- Assuming `noexcept` should be used everywhere.
- Thinking only about performance and ignoring API contracts.
- Ignoring failure-handling considerations.

## Exercise
For each function explain:
- Can it fail?
- Should `noexcept` be considered?
- Why or why not?

```cpp
void logMessage() noexcept;
```

```cpp
int getVersion() noexcept;
```

```cpp
void loadConfiguration();
```

Explain why communicating failure guarantees becomes increasingly important in production-quality systems.

## 5 Minute Revision
- `noexcept` communicates that a function is not expected to throw exceptions.
- Failure guarantees improve API clarity and maintainability.
- Not every function should be marked `noexcept`.
- Always ask whether an operation can legitimately fail.
- Modern C++ encourages developers to communicate intent clearly.

## Previous and Next Topics
- Previous: [52. try / catch](52-try-catch.md)
- Current: **53. noexcept**
- Next: [54. Exception Safety](54-exception-safety.md)

## Summary
- `noexcept` allows Modern C++ developers to communicate important failure guarantees clearly.
- Understanding when operations may legitimately fail is essential for writing maintainable and exception-safe applications.
- Modern C++ encourages developers to design APIs that clearly communicate their guarantees and responsibilities.

## Status
Status: Topic 53 Completed (Continue with Topic 54 for Exception Safety and how production-quality Modern C++ systems remain correct even when failures occur).