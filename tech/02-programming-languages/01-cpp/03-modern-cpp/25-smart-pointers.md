# 25. Smart Pointers

## Topic Overview
- Importance: ★★★★★ MUST KNOW
- Interview Frequency: Very High
- Estimated Study Time: 45-60 Minutes

## Why Should You Learn This Topic?
Smart pointers are one of the most important features of Modern C++. They provide automatic resource management using RAII and significantly reduce memory-related bugs. Understanding smart pointers is essential for production-quality Modern C++ development and AMD SMTS interviews.

## Learning Objectives
- Understand why smart pointers exist.
- Learn the different types of smart pointers.
- Understand ownership semantics.
- Compare smart pointers with raw pointers.
- Prepare for common interview questions.

## Beginner Level – What are Smart Pointers?
Smart pointers are objects that manage dynamically allocated memory automatically.

Simply put:

> If a smart pointer owns a resource, it is responsible for releasing it automatically when it is no longer needed.

Modern C++ primarily provides:
- `std::unique_ptr`
- `std::shared_ptr`
- `std::weak_ptr`

## Why Do Smart Pointers Exist?
Before Modern C++, developers commonly wrote:

```cpp
int* ptr = new int(10);

// use ptr

delete ptr;
```

Problems included:
- Memory leaks.
- Forgotten cleanup operations.
- Double deletion.
- Exception handling issues.
- Ownership confusion.

Smart pointers solve many of these problems automatically using RAII.

## Real World Analogy
Imagine owning a house.

- `unique_ptr` -> Only one owner.
- `shared_ptr` -> Multiple owners share ownership.
- `weak_ptr` -> Has permission to observe the house but does not own it.

Ownership semantics are one of the most important concepts to understand when working with smart pointers.

## Java Developer's Corner
Java developers are accustomed to:
- Garbage Collection.
- Automatic memory management.

Modern C++ takes a different approach.

```text
Java
-----
Object Lifetime
      ↓
Garbage Collector
      ↓
Automatic Cleanup


Modern C++
-----------
Object Lifetime
      ↓
RAII
      ↓
Smart Pointer Ownership
      ↓
Automatic Cleanup
```

C++ provides deterministic cleanup based on ownership semantics.

## Simple Examples

### unique_ptr

```cpp
#include <memory>

std::unique_ptr<int> value = std::make_unique<int>(10);
```

Characteristics:
- Single owner.
- Cannot be copied.
- Can be moved.
- Preferred whenever possible.

### shared_ptr

```cpp
#include <memory>

std::shared_ptr<int> value = std::make_shared<int>(10);
```

Characteristics:
- Multiple owners allowed.
- Uses reference counting.
- Slightly higher overhead than `unique_ptr`.

### weak_ptr

```cpp
std::weak_ptr<int> value;
```

Characteristics:
- Does not own the resource.
- Used to prevent cyclic ownership problems.
- Works together with `shared_ptr`.

## Engineer Level Thinking
Whenever you design a class, ask:

> Who owns this resource?

Possible answers include:
- Only one owner.
- Multiple owners.
- No ownership, only observation.

Choosing the correct smart pointer is fundamentally an ownership design decision.

## Production Examples
Smart pointers are widely used in:
- Platform libraries.
- Compilers.
- Testing frameworks.
- Game engines.
- Cloud SDKs.
- Modern C++ applications.

`std::unique_ptr` should generally be your first choice unless shared ownership is explicitly required.

## AMD SMTS Perspective
This is a MUST KNOW interview topic.

Common interview questions include:
- Why should we prefer `unique_ptr` over `shared_ptr`?
- How does `shared_ptr` implement ownership?
- What problem does `weak_ptr` solve?
- How do smart pointers use RAII?
- When would you still use raw pointers?

Interviewers are often more interested in ownership semantics than syntax.

## Common Mistakes
- Using `shared_ptr` everywhere.
- Forgetting ownership considerations.
- Using raw pointers unnecessarily.
- Creating cyclic references using `shared_ptr`.
- Ignoring `std::make_unique()` and `std::make_shared()`.

## Common Confusions

### Confusion 1

> Are smart pointers the same as Garbage Collection?

No.

Smart pointers use ownership semantics and RAII rather than a Garbage Collector.

### Confusion 2

> Is `shared_ptr` always better?

No.

Prefer:

```text
unique_ptr
      ↓
shared_ptr
      ↓
weak_ptr
```

Use shared ownership only when it is truly required.

## Interview Questions
1. What problem do smart pointers solve?
2. What is the difference between `unique_ptr` and `shared_ptr`?
3. What problem does `weak_ptr` solve?
4. Why should `unique_ptr` generally be preferred?
5. How do smart pointers relate to RAII?

## Interview Traps
- Saying smart pointers use Garbage Collection.
- Using `shared_ptr` by default.
- Forgetting ownership semantics.
- Treating `weak_ptr` as an owning smart pointer.

## Exercise
Implement three examples demonstrating:
- `unique_ptr`
- `shared_ptr`
- `weak_ptr`

For each example, explain:
- Who owns the resource?
- When is the resource released?
- Why was that smart pointer chosen?

## 5 Minute Revision
- Smart pointers provide automatic resource management.
- `unique_ptr` -> single ownership.
- `shared_ptr` -> shared ownership.
- `weak_ptr` -> non-owning observer.
- Smart pointers are built upon RAII principles.

## Previous and Next Topics
- Previous: [24. RAII](24-raii.md)
- Current: **25. Smart Pointers**
- Next: [26. Move Semantics](26-move-semantics.md)

## Summary
- Smart pointers are fundamental to Modern C++.
- Ownership semantics are more important than memorizing syntax.
- Prefer `unique_ptr` unless shared ownership is required.
- Smart pointers significantly improve safety and maintainability.

## Status
Status: Topic 25 Completed (Revisit after Topics 26, 28 and 30 for Move Semantics, std::move and the Rule of Five).