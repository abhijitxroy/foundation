# 43. new / delete

## Topic Overview
- Importance: ★★★★★ MUST KNOW
- Interview Frequency: Very High
- Estimated Study Time: 45-60 Minutes

## Why Should You Learn This Topic?
`new` and `delete` are the fundamental operations behind manual dynamic memory management in C++. Although Modern C++ encourages developers to prefer RAII and smart pointers, understanding `new` and `delete` remains essential for debugging production issues, reviewing legacy code, and succeeding in system-level interviews.

## Learning Objectives
- Understand what `new` and `delete` are.
- Learn why they exist.
- Understand ownership responsibilities.
- Recognize common memory-management bugs.
- Prepare for system-level interview questions.

## Beginner Level – What are new and delete?
Simply put:

> `new` allocates memory dynamically.
>
> `delete` releases previously allocated memory.

For example:

```cpp
int* value = new int(100);
```

allocates memory on the Heap.

```cpp
delete value;
```

releases the allocated memory.

Whenever we use `new`, we must immediately ask:

> Who owns this memory?

## Why Do new and delete Exist?
Applications frequently require:
- Runtime-sized resources.
- Flexible object lifetimes.
- Dynamic resource management.

`new` and `delete` provide developers with explicit control over these decisions.

However, greater control also means greater responsibility.

## Real World Analogy
Imagine renting a warehouse.

### new
- Rent the warehouse.
- You become responsible for it.

### delete
- Return the warehouse.
- Your responsibility ends.

Problems occur when:
- You forget to return it.
- You return it twice.
- Someone else attempts to use it after returning it.

These situations closely resemble:
- Memory leaks.
- Double deletion.
- Dangling pointers.

## Java Developer's Corner
Java developers write:

```java
Employee employee = new Employee();
```

The JVM manages:
- Allocation.
- Cleanup.
- Object lifetime.

Modern C++ provides significantly greater control:

```cpp
Employee* employee = new Employee();
```

which immediately raises three questions:

- Who owns this object?
- Who deletes it?
- When is it deleted?

Ownership semantics remain central to understanding Modern C++.

## Simple Examples

### Manual Allocation

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

No explicit `delete` is required.

### Incorrect Example

```cpp
int* value = new int(50);

// forgot delete
```

This produces:

```text
Memory Leak
```

## Engineer Level Thinking
Before writing:

```cpp
new
```

ask yourself:

1. Is dynamic allocation necessary?
2. Who owns this memory?
3. Can RAII solve this problem?
4. Can `std::unique_ptr` express ownership more clearly?
5. When will the memory be released?

Modern C++ generally prefers:

```text
Stack Allocation
      ↓
RAII
      ↓
Smart Pointers
      ↓
Manual new/delete
      (Only When Necessary)
```

## Production Examples
Understanding `new` and `delete` is important for:
- Legacy C++ codebases.
- Native libraries.
- Performance-critical applications.
- Platform engineering tooling.
- System-level debugging.
- Compiler infrastructure.

Many production bugs involve incorrect ownership decisions rather than incorrect syntax.

## Debugging Perspective

```text
Problem
-------
Program occasionally crashes.

Ask
---
1. Was delete called twice?
2. Was memory released too early?
3. Is this a dangling pointer?
4. Is there a memory leak?
5. Who owns this memory?
```

Understanding `new` and `delete` is invaluable when debugging difficult production issues.

## AMD SMTS Perspective
This is a MUST KNOW interview topic.

Interviewers may ask:
- What is the difference between `new` and Stack allocation?
- Why do memory leaks occur?
- What happens if `delete` is forgotten?
- Why are smart pointers generally preferred?
- When is manual memory management still appropriate?

### Why Should I Care as a Platform Engineer?
- Improves debugging skills.
- Helps identify ownership bugs.
- Improves resource-management decisions.
- Frequently appears in system-level interviews.
- Provides a strong foundation for understanding memory leaks and undefined behavior.

## What Would a Senior Engineer Do?

```text
Junior Engineer
---------------
How do I use new?

        ↓

Mid Level Engineer
-----------------
Can this leak memory?

        ↓

Senior Engineer
---------------
Should I be using new at all?

Can Stack allocation work?

Can RAII solve this?

Can unique_ptr express ownership
more clearly?
```

Senior engineers frequently optimize designs by removing unnecessary manual resource management.

## Common Mistakes
- Forgetting `delete`.
- Calling `delete` twice.
- Accessing released memory.
- Performing manual memory management unnecessarily.
- Ignoring ownership semantics.

## Common Confusions

### Confusion 1

> Should we completely avoid `new`?

No.

Understanding `new` remains important because many libraries and legacy codebases use manual dynamic allocation.

### Confusion 2

> Is using `new` bad practice?

No.

Modern C++ simply encourages developers to use safer abstractions whenever appropriate.

## Interview Questions
1. What is `new`?
2. What is `delete`?
3. What happens if `delete` is forgotten?
4. Why are smart pointers generally preferred?
5. When is manual dynamic allocation appropriate?

## Senior Engineer Questions
1. Why was Heap allocation chosen here?
2. Who owns this resource?
3. Can RAII simplify this design?
4. Can `std::unique_ptr` eliminate manual cleanup?
5. What production bugs may occur if ownership is unclear?

## Interview Traps
- Saying `new` should never be used.
- Ignoring ownership semantics.
- Assuming Heap allocation is always necessary.

## Exercise
For each example explain:
- Who owns the memory?
- When is it released?
- Would Modern C++ provide a safer alternative?

```cpp
int* value = new int(50);
```

```cpp
delete value;
```

```cpp
auto value = std::make_unique<int>(50);
```

```cpp
std::vector<int> values(1000);
```

## 5 Minute Revision
- `new` performs dynamic memory allocation.
- `delete` releases dynamically allocated memory.
- Ownership semantics remain central to Modern C++.
- Prefer RAII and smart pointers whenever appropriate.
- Always ask who owns the allocated resource.

## Previous and Next Topics
- Previous: [42. Dynamic Allocation](42-dynamic-allocation.md)
- Current: **43. new / delete**
- Next: [44. Memory Leaks](44-memory-leaks.md)

## Summary
- `new` and `delete` provide explicit control over dynamic memory management.
- Understanding ownership, lifetime, and cleanup responsibilities is more important than memorizing syntax.
- Modern C++ encourages developers to write safer designs using RAII and smart pointers whenever possible.

## Status
Status: Topic 43 Completed (Continue with Topic 44 for Memory Leaks and one of the most common causes of production memory-management bugs in C++).