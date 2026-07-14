# 42. Dynamic Allocation

## Topic Overview
- Importance: ★★★★★ MUST KNOW
- Interview Frequency: Very High
- Estimated Study Time: 45-60 Minutes

## Why Should You Learn This Topic?
Dynamic allocation allows programs to request memory at runtime when the amount of required memory is not known beforehand. It forms the foundation for understanding `new`, `delete`, smart pointers, memory leaks, and resource ownership in Modern C++.

## Learning Objectives
- Understand what dynamic allocation is.
- Learn why it exists.
- Understand when Heap allocation is necessary.
- Recognize common debugging scenarios.
- Prepare for system-level interview questions.

## Beginner Level – What is Dynamic Allocation?
Simply put:

> Dynamic allocation allows a program to request memory during runtime whenever the required size or lifetime cannot be determined beforehand.

Examples include:
- User input determines memory requirements.
- Applications loading large datasets.
- Runtime resource management.
- Library and framework development.

Dynamic allocation typically uses Heap memory.

## Why Does Dynamic Allocation Exist?
Stack allocation is:
- Fast.
- Automatic.
- Predictable.

However, applications frequently need:
- Flexible object lifetimes.
- Runtime-sized resources.
- Dynamically growing data structures.

Dynamic allocation exists to provide this flexibility.

## Real World Analogy
Imagine booking hotel rooms.

### Stack Allocation
- One room is reserved beforehand.
- The stay duration is already known.

### Dynamic Allocation
- Rooms are booked based upon how many guests actually arrive.
- The number of rooms may change at runtime.

Similarly, applications frequently do not know their memory requirements until they are running.

## Java Developer's Corner
Java developers frequently allocate objects on the Heap without explicitly requesting memory.

```java
List<String> names = new ArrayList<>();
```

The JVM manages:
- Allocation.
- Cleanup.
- Object lifetime.

Modern C++ provides significantly greater control over:
- Allocation decisions.
- Ownership semantics.
- Resource lifetime management.

## Simple Examples

### Stack Allocation

```cpp
int age = 30;
```

Characteristics:
- Automatic cleanup.
- Lifetime is tied to scope.

### Dynamic Allocation

```cpp
int* age = new int(30);
```

Characteristics:
- Heap allocation.
- Requires ownership decisions.
- Requires proper cleanup.

### Modern C++ Approach

```cpp
#include <memory>

auto age = std::make_unique<int>(30);
```

Characteristics:
- Heap allocation.
- Automatic cleanup.
- Clear ownership semantics.

## Engineer Level Thinking
Before allocating memory dynamically, ask:

1. Is Stack allocation sufficient?
2. Who owns this memory?
3. When will it be released?
4. Can RAII or smart pointers manage it safely?

Modern C++ generally prefers:

```text
Stack Allocation
      ↓
Smart Pointers
      ↓
Manual Dynamic Allocation
      (Only When Necessary)
```

## Production Examples
Dynamic allocation is commonly required for:
- STL containers.
- Smart pointers.
- Native libraries.
- Runtime configuration management.
- High-performance applications.
- Platform engineering tooling.

Many production systems heavily utilize dynamic allocation internally while exposing safer abstractions to developers.

## Debugging Perspective

```text
Problem
-------
Memory usage continuously increases.

Ask
---
1. Who owns the allocated memory?
2. Was cleanup performed correctly?
3. Is there a resource leak?
4. Can smart pointers improve the design?
```

Many difficult production bugs originate from unclear ownership decisions rather than allocation itself.

## AMD SMTS Perspective
This is a MUST KNOW interview topic.

Interviewers may ask:
- What is dynamic allocation?
- Why isn't Stack allocation always sufficient?
- When should Heap allocation be used?
- How do smart pointers improve memory safety?
- Why is ownership semantics important?

### Why Should I Care as a Platform Engineer?
- Improves debugging skills.
- Improves ownership decisions.
- Reduces resource-management bugs.
- Frequently appears in system-level interviews.
- Forms the foundation for understanding memory leaks and dangling pointers.

## Common Mistakes
- Assuming Heap allocation is always preferable.
- Forgetting ownership responsibilities.
- Performing manual memory management unnecessarily.
- Ignoring RAII and smart pointers.

## Common Confusions

### Confusion 1

> Is dynamic allocation always slower?

Not necessarily.

The correct question is whether dynamic allocation is required by the application's lifetime and resource-management requirements.

### Confusion 2

> Should we completely avoid Heap allocation?

No.

Modern applications frequently require dynamic allocation. The goal is to manage it safely rather than avoid it entirely.

## Interview Questions
1. What is dynamic allocation?
2. Why isn't Stack allocation always sufficient?
3. When should dynamic allocation be used?
4. How do smart pointers improve memory safety?
5. Why is ownership semantics important?

## Senior Engineer Questions
1. Why did you choose Heap allocation instead of Stack allocation?
2. Who owns this dynamically allocated resource?
3. Can this design be simplified using RAII?
4. What happens if cleanup never occurs?
5. Would `std::unique_ptr` improve this implementation?

## Interview Traps
- Saying Heap allocation should always be avoided.
- Ignoring ownership semantics.
- Performing manual memory management when safer alternatives exist.

## Exercise
For each example explain:
- Why dynamic allocation was or was not required.
- Who owns the memory.
- When the memory is released.

```cpp
int value = 50;
```

```cpp
int* value = new int(50);
```

```cpp
auto value = std::make_unique<int>(50);
```

```cpp
std::vector<int> values(1000);
```

## 5 Minute Revision
- Dynamic allocation provides flexible lifetime management.
- Ownership semantics remain central to Modern C++.
- Prefer Stack allocation whenever appropriate.
- Prefer smart pointers over manual memory management whenever possible.
- Always ask who owns the allocated memory.

## Previous and Next Topics
- Previous: [41. Memory Layout](41-memory-layout.md)
- Current: **42. Dynamic Allocation**
- Next: [43. new/delete](43-new-delete.md)

## Summary
- Dynamic allocation allows applications to request memory at runtime whenever flexibility is required.
- Understanding ownership, object lifetime, and cleanup responsibilities is more important than memorizing syntax.
- Modern C++ encourages developers to combine dynamic allocation with RAII and smart pointers for safer designs.

## Status
Status: Topic 42 Completed (Continue with Topic 43 for `new` and `delete`, the fundamental operations behind manual dynamic memory management in C++).