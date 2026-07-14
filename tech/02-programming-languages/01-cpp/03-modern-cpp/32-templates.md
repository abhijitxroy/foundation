# 32. Templates

## Topic Overview
- Importance: ★★★★★ MUST KNOW
- Interview Frequency: Very High
- Estimated Study Time: 45-60 Minutes

## Why Should You Learn This Topic?
Templates are one of the most powerful features of Modern C++. They allow developers to write generic and reusable code without sacrificing performance. Much of the Standard Template Library (STL) is built using templates, making this topic essential for Modern C++ development and AMD SMTS interviews.

## Learning Objectives
- Understand what templates are.
- Learn why templates exist.
- Understand function and class templates at a high level.
- Recognize how templates improve code reuse.
- Prepare for common interview questions.

## Beginner Level – What are Templates?
Simply put:

> Templates allow us to write code once and use it with multiple data types.

Instead of writing:
- One function for `int`
- One function for `double`
- One function for `float`

We can write a single generic implementation.

Templates are primarily used for:
- Generic programming.
- Code reuse.
- Type safety.
- High-performance abstractions.

## Why Do Templates Exist?
Without templates, developers frequently duplicate code for different data types.

Problems include:
- Code duplication.
- Reduced maintainability.
- Increased chances of bugs.
- Poor scalability.

Templates solve these problems while remaining highly efficient.

## Real World Analogy
Imagine a water bottle manufacturing machine.

The same machine can produce:
- 500 ml bottles.
- 1 litre bottles.
- 2 litre bottles.

The underlying process remains largely unchanged.

Similarly, templates allow us to reuse the same logic for multiple types.

## Java Developer's Corner
Java developers may compare templates with:
- Generics.
- Collections.

For example:

```java
List<String>
List<Integer>
```

Modern C++ provides:

```cpp
std::vector<int>
std::vector<double>
std::vector<std::string>
```

Although templates and Java generics are conceptually similar, they are implemented differently. Modern C++ templates are resolved at compile time and provide highly optimized, type-safe abstractions.

## Simple Examples

### Function Template

```cpp
template<typename T>
T add(T first, T second)
{
    return first + second;
}
```

Usage:

```cpp
add(10, 20);
add(10.5, 20.5);
```

### Class Template

```cpp
template<typename T>
class Box
{
private:
    T value;
};
```

Usage:

```cpp
Box<int> age;
Box<std::string> name;
```

For now, focus only on understanding that templates provide generic and reusable designs.

## Engineer Level Thinking
Ask yourself:

> Am I writing the same logic repeatedly for different types?

If the answer is yes, templates may provide a better design.

Templates are one of the major reasons Modern C++ can provide:
- Zero-cost abstractions.
- Generic programming.
- High-performance libraries.

## Production Examples
Templates are extensively used by:
- STL Containers.
- Smart Pointers.
- Algorithms.
- Modern C++ libraries.
- High-performance systems.
- Platform engineering tooling.

Examples include:
- `std::vector<T>`
- `std::unique_ptr<T>`
- `std::shared_ptr<T>`
- `std::optional<T>`

## AMD SMTS Perspective
This is a MUST KNOW interview topic.

Interviewers may ask:
- What are templates?
- Why do we need templates?
- How are templates different from Java generics?
- What problems do templates solve?
- Why are templates important in Modern C++?

### Why Should I Care as a Platform Engineer?
- Improves code reuse.
- Reduces code duplication.
- Enables highly optimized generic libraries.
- Forms the foundation of much of Modern C++.
- Frequently appears in production codebases and interviews.

## Common Mistakes
- Thinking templates are merely code-generation tools.
- Writing duplicated code unnecessarily.
- Treating templates as an advanced topic that can be ignored.
- Attempting to learn advanced template metaprogramming immediately.

## Common Confusions

### Confusion 1

> Are templates the same as Java generics?

No.

Although conceptually similar, they are implemented differently and provide different capabilities.

### Confusion 2

> Are templates slow?

No.

Templates are one of the foundations of Modern C++ zero-cost abstractions and are heavily optimized by modern compilers.

## Interview Questions
1. What are templates?
2. Why do we need templates?
3. What problems do templates solve?
4. How are templates different from Java generics?
5. Give examples of templates used by the STL.

## Interview Traps
- Thinking templates are only used by library developers.
- Ignoring their relationship with STL containers.
- Confusing templates with Java generics.

## Exercise
Implement:
- A function template that returns the larger of two values.
- A simple class template that stores a value of any type.

Explain:
- Why templates improve maintainability.
- How templates reduce code duplication.

## 5 Minute Revision
- Templates enable generic programming in Modern C++.
- They improve code reuse and maintainability.
- Much of the STL is implemented using templates.
- Templates provide highly optimized, type-safe abstractions.
- Understanding templates is essential before learning STL containers.

## Previous and Next Topics
- Previous: [31. Rule of Zero](31-rule-of-zero.md)
- Current: **32. Templates**
- Next: [33. STL Containers](33-stl-containers.md)

## Summary
- Templates are one of the foundational features of Modern C++.
- They enable generic programming without sacrificing performance.
- Much of Modern C++ is built upon templates, making them essential for production development and interviews.

## Status
Status: Topic 32 Completed (Revisit after Topics 33 and 35 for STL Containers and Algorithms to see templates extensively used in practice).