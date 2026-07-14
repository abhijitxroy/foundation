# 30. Rule of Five

## Topic Overview
- Importance: ★★★★★ MUST KNOW
- Interview Frequency: Very High
- Estimated Study Time: 45-60 Minutes

## Why Should You Learn This Topic?
The Rule of Five extends the Rule of Three by incorporating move semantics introduced in Modern C++. It teaches developers how resources should behave when objects are copied, moved, assigned, and destroyed. Understanding the Rule of Five is extremely valuable for production-quality Modern C++ development and interviews.

## Learning Objectives
- Understand what the Rule of Five is.
- Learn why it exists.
- Identify the five special member functions.
- Understand its relationship with move semantics.
- Prepare for common interview questions.

## Beginner Level – What is the Rule of Five?
The Rule of Five states:

> If a class requires one of the special member functions for resource management, it will often require all five to be considered.

The five special member functions are:
- Destructor
- Copy Constructor
- Copy Assignment Operator
- Move Constructor
- Move Assignment Operator

These functions work together to manage resource ownership safely and efficiently.

## Why Does the Rule of Five Exist?
The Rule of Three was designed before move semantics existed.

Modern C++ introduced:
- Move semantics.
- Rvalue references.
- `std::move()`.

This made efficient ownership transfer possible. The Rule of Five extends the Rule of Three by defining how resources should behave during both copying and moving operations.

## Real World Analogy
Imagine transferring ownership of a house.

Questions we must answer include:
- Can ownership be copied?
- Can ownership be transferred?
- Who is responsible for cleanup?
- What happens when ownership changes?

Similarly, resource-managing classes must define how their resources behave throughout an object's lifetime.

## Java Developer's Corner
Java developers rarely think about:
- Move constructors.
- Copy constructors.
- Ownership transfers.
- Manual resource management.

Modern C++ provides explicit control over these concepts to improve performance and safety.

## Simple Examples

The Rule of Five consists of:

```cpp
class Resource {
public:
    Resource(const Resource& other);

    Resource& operator=(const Resource& other);

    Resource(Resource&& other);

    Resource& operator=(Resource&& other);

    ~Resource();
};
```

For now, focus on understanding the responsibilities of these functions rather than their implementation details.

## Engineer Level Thinking
Whenever a class owns a resource, ask:

> How should it behave when copied?

and

> How should it behave when moved?

Ownership semantics remain the central idea.

The Rule of Five helps developers design predictable and safe resource-managing classes.

## Production Examples
The Rule of Five becomes important when working with:
- Native libraries.
- Performance-critical applications.
- Resource-managing classes.
- Custom containers.
- High-performance Modern C++ systems.

Modern C++ often prefers the Rule of Zero when possible, but understanding the Rule of Five remains essential.

## AMD SMTS Perspective
This is a MUST KNOW interview topic.

Interviewers may ask:
- What is the Rule of Five?
- Why was it introduced?
- How is it related to move semantics?
- How is it different from the Rule of Three?
- When should we prefer the Rule of Zero?

### Why Should I Care as a Platform Engineer?
- Improves resource management decisions.
- Helps identify ownership-related bugs.
- Improves performance through move operations.
- Frequently appears in Modern C++ code reviews and interviews.
- Provides a strong foundation for understanding library design.

## Common Mistakes
- Memorizing all five functions without understanding ownership semantics.
- Forgetting move operations when managing resources manually.
- Implementing manual resource management unnecessarily.
- Ignoring Modern C++ alternatives such as smart pointers.

## Common Confusions

### Confusion 1

> Does every class require the Rule of Five?

No.

Only resource-managing classes typically require it.

### Confusion 2

> Is the Rule of Five better than the Rule of Zero?

Not necessarily.

Modern C++ generally prefers the Rule of Zero whenever possible.

## Interview Questions
1. What is the Rule of Five?
2. Why was it introduced?
3. Which five member functions are involved?
4. How is it different from the Rule of Three?
5. When should the Rule of Zero be preferred?

## Interview Traps
- Saying every class should implement all five functions.
- Treating the Rule of Five as merely an interview topic.
- Ignoring ownership semantics and move operations.

## Exercise
Consider a class that owns dynamically allocated memory.

Explain:
- What should happen when it is copied?
- What should happen when it is moved?
- Which special member functions may require customization?
- When the Rule of Zero may be a better design choice.

## 5 Minute Revision
- The Rule of Five extends the Rule of Three by incorporating move operations.
- Ownership semantics are central to understanding this topic.
- Resource-managing classes often require careful consideration of all five functions.
- Move semantics significantly improves performance.
- Modern C++ frequently prefers the Rule of Zero when possible.

## Previous and Next Topics
- Previous: [29. Rule of Three](29-rule-of-three.md)
- Current: **30. Rule of Five**
- Next: [31. Rule of Zero](31-rule-of-zero.md)

## Summary
- The Rule of Five teaches developers how to design resource-managing classes safely and efficiently.
- Understanding ownership and move semantics is more important than memorizing the five functions.
- It forms an important bridge between traditional resource management techniques and Modern C++ best practices.

## Status
Status: Topic 30 Completed (Revisit after Topic 31 for the Rule of Zero and Modern C++ best practices).