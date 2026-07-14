# 44. Memory Leaks

## Topic Overview
- Importance: ★★★★★ MUST KNOW
- Interview Frequency: Very High
- Estimated Study Time: 45-60 Minutes

## Why Should You Learn This Topic?
Memory leaks are among the most common and difficult production problems in native applications. They gradually increase memory consumption and may eventually degrade performance or crash applications. Understanding memory leaks is essential for debugging, system-level interviews, and writing production-quality Modern C++ code.

## Learning Objectives
- Understand what memory leaks are.
- Learn why they occur.
- Recognize common causes of memory leaks.
- Understand how Modern C++ helps prevent them.
- Prepare for debugging-oriented interview questions.

## Beginner Level – What is a Memory Leak?
Simply put:

> A memory leak occurs when dynamically allocated memory is never released after it is no longer needed.

For example:

```cpp
int* value = new int(100);

// forgot delete
```

The program loses the opportunity to release the allocated memory.

## Why Do Memory Leaks Occur?
Common reasons include:
- Forgetting `delete`.
- Unclear ownership semantics.
- Exception handling paths.
- Incorrect resource management.
- Long-running applications.

Memory leaks are usually ownership problems rather than syntax problems.

## Real World Analogy
Imagine renting a hotel room every day but never checking out.

Eventually:
- Costs increase.
- Resources become unavailable.
- Problems accumulate over time.

Similarly, leaked memory is unavailable until the program terminates.

## Java Developer's Corner
Java developers are generally protected from many traditional memory leaks by Garbage Collection.

Modern C++ requires developers to think carefully about:
- Ownership.
- Lifetime.
- Cleanup responsibilities.

Modern C++ significantly improves safety through:
- RAII.
- Smart pointers.
- STL containers.

## Simple Examples

### Incorrect Example

```cpp
int* value = new int(50);

// forgot delete
```

Produces:

```text
Memory Leak
```

### Correct Example

```cpp
int* value = new int(50);

// use value

delete value;
```

### Modern C++ Approach

```cpp
#include <memory>

auto value = std::make_unique<int>(50);
```

Automatic cleanup occurs when the object goes out of scope.

## Engineer Level Thinking
Whenever you see:

```cpp
new
```

immediately ask:

1. Who owns this resource?
2. Who releases the memory?
3. What happens during exceptions?
4. Can RAII simplify this design?
5. Can smart pointers express ownership more clearly?

Many production memory leaks originate from unclear ownership semantics.

## Production Examples
Memory leaks are commonly found in:
- Native libraries.
- Long-running services.
- Platform engineering tooling.
- Performance-critical applications.
- Legacy C++ codebases.
- Resource-management bugs.

Small leaks may become serious problems when applications run continuously for days or weeks.

## Production Bug Example

```text
Problem
-------
The application runs continuously
for 10 days and eventually consumes
8 GB of memory.

Question
--------
Which resources are never released?

Root Cause
----------
Memory Leak.
```

## Debugging Perspective

```text
Problem
-------
Memory usage continuously increases.

Ask
---
1. Who owns the resource?
2. Was cleanup performed correctly?
3. Is delete missing?
4. Can smart pointers eliminate this leak?
5. Is ownership semantics clearly expressed?
```

Understanding ownership decisions is often more valuable than understanding allocation itself.

## AMD SMTS Perspective
This is a MUST KNOW interview topic.

Interviewers may ask:
- What is a memory leak?
- Why do memory leaks occur?
- How do smart pointers help prevent them?
- Why are ownership semantics important?
- How would you debug a production memory leak?

### Why Should I Care as a Platform Engineer?
- Improves debugging abilities.
- Helps identify ownership bugs.
- Improves resource-management decisions.
- Frequently appears in system-level interviews.
- Essential for production-quality Modern C++ development.

## What Would a Senior Engineer Do?

```text
Junior Engineer
---------------
I forgot delete.

        ↓

Mid Level Engineer
-----------------
Can this leak memory?

        ↓

Senior Engineer
---------------
Why is ownership unclear?

Can RAII solve this?

Can unique_ptr express ownership
more clearly?

Can this entire design avoid
manual memory management?
```

## Common Mistakes
- Forgetting cleanup operations.
- Ignoring ownership semantics.
- Using raw pointers unnecessarily.
- Assuming small leaks are harmless.
- Treating memory leaks as merely interview topics.

## Common Confusions

### Confusion 1

> Does a small memory leak matter?

Yes.

Small leaks may become serious problems in long-running applications.

### Confusion 2

> Do smart pointers completely eliminate memory leaks?

Not always.

They significantly improve safety but developers must still understand ownership semantics.

## Interview Questions
1. What is a memory leak?
2. Why do memory leaks occur?
3. How do smart pointers improve memory safety?
4. Why are ownership semantics important?
5. How would you debug a production memory leak?

## Senior Engineer Questions
1. Who owns this resource?
2. Can this design avoid manual memory management?
3. Would RAII simplify this implementation?
4. What happens if this service runs continuously for several weeks?
5. How would you identify the source of increasing memory usage?

## Interview Traps
- Assuming small memory leaks are harmless.
- Ignoring ownership decisions.
- Assuming smart pointers remove the need to understand resource management.

## Exercise
For each example explain:
- Will a memory leak occur?
- Who owns the resource?
- How can Modern C++ improve the design?

```cpp
int* value = new int(50);
```

```cpp
int* value = new int(50);
delete value;
```

```cpp
auto value = std::make_unique<int>(50);
```

```cpp
std::vector<int> values(1000);
```

## 5 Minute Revision
- Memory leaks occur when resources are never released.
- Ownership semantics remain central to Modern C++.
- Prefer RAII and smart pointers whenever appropriate.
- Small leaks can become major production problems.
- Always ask who owns the allocated resource.

## Previous and Next Topics
- Previous: [43. new / delete](43-new_delete.md)
- Current: **44. Memory Leaks**
- Next: [45. Dangling Pointers](45-dangling-pointers.md)

## Summary
- Memory leaks are one of the most common production memory-management problems.
- Understanding ownership, object lifetime, and cleanup responsibilities is essential for debugging native applications.
- Modern C++ encourages safer designs through RAII, smart pointers, and clear ownership semantics.

## Status
Status: Topic 44 Completed (Continue with Topic 45 for Dangling Pointers and why accessing released memory frequently leads to difficult production bugs).