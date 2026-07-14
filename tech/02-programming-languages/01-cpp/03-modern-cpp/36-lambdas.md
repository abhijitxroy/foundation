# 36. Lambdas

## Topic Overview
- Importance: ★★★★★ MUST KNOW
- Interview Frequency: Very High
- Estimated Study Time: 45-60 Minutes

## Why Should You Learn This Topic?
Lambdas allow developers to write small, reusable pieces of logic directly where they are needed. They work exceptionally well with STL algorithms and are widely used in Modern C++ production code. Understanding lambdas is essential for writing clean, expressive, and maintainable Modern C++ applications.

## Learning Objectives
- Understand what lambdas are.
- Learn why they exist.
- Understand how they work with STL algorithms.
- Recognize common lambda syntax.
- Prepare for common interview questions.

## Beginner Level – What are Lambdas?
Simply put:

> Lambdas are anonymous functions that can be written inline without explicitly creating a separate function.

Instead of writing:

```cpp
bool isEven(int value)
{
    return value % 2 == 0;
}
```

Modern C++ allows us to write:

```cpp
[](int value)
{
    return value % 2 == 0;
}
```

Lambdas are commonly used with:
- STL Algorithms
- Containers
- Iterators
- Sorting operations
- Filtering operations

## Why Do Lambdas Exist?
Without lambdas, developers frequently write:
- Small helper functions.
- Temporary utility functions.
- Repetitive callback implementations.

Problems include:
- Reduced readability.
- Increased code duplication.
- Less expressive code.

Lambdas provide a concise and reusable solution.

## Real World Analogy
Imagine ordering coffee.

Instead of creating a permanent document that says:
- Add sugar.
- Add milk.
- Serve hot.

You simply tell the barista your requirements at that moment.

Similarly, lambdas allow us to provide small pieces of logic exactly where they are needed.

## Java Developer's Corner
Java developers may compare lambdas with:

```java
numbers.stream()
       .filter(value -> value > 10);
```

Modern C++ provides:

```cpp
[](int value)
{
    return value > 10;
}
```

Both languages use lambdas extensively to improve readability and expressiveness.

## Simple Examples

### Sorting

```cpp
#include <algorithm>
#include <vector>

std::vector<int> numbers {4,1,3,2};

std::sort(
    numbers.begin(),
    numbers.end(),
    [](int first, int second)
    {
        return first < second;
    });
```

### Finding Values

```cpp
auto iterator = std::find_if(
    numbers.begin(),
    numbers.end(),
    [](int value)
    {
        return value > 2;
    });
```

For now, focus on understanding that lambdas allow us to provide custom logic directly to algorithms.

## Engineer Level Thinking
Modern C++ frequently follows this pipeline:

```text
Container
    ↓
Iterator
    ↓
Algorithm
    ↓
Lambda
    ↓
Result
```

Instead of writing multiple helper functions, lambdas make code:
- Cleaner.
- More expressive.
- Easier to maintain.

## Production Examples
Lambdas are extensively used by:
- STL Algorithms.
- Modern C++ libraries.
- Platform engineering tooling.
- High-performance applications.
- Production-quality APIs.
- Callback implementations.

They are among the most frequently used Modern C++ features in production code.

## AMD SMTS Perspective
This is a MUST KNOW interview topic.

Interviewers may ask:
- What are lambdas?
- Why do we need them?
- How do they work with algorithms?
- What problems do they solve?
- When should lambdas be preferred over normal functions?

### Why Should I Care as a Platform Engineer?
- Produces cleaner code.
- Improves maintainability.
- Frequently appears in Modern C++ codebases.
- Integrates naturally with STL algorithms.
- Encourages reusable and expressive designs.

## Common Mistakes
- Treating lambdas as merely syntactic sugar.
- Writing complex lambdas unnecessarily.
- Ignoring their relationship with algorithms.
- Avoiding lambdas because of unfamiliar syntax.

## Common Confusions

### Confusion 1

> Are lambdas always better than normal functions?

No.

Small pieces of logic are often excellent candidates for lambdas. Larger reusable operations may be better implemented as normal functions.

### Confusion 2

> Must lambdas always be used with algorithms?

No.

Although commonly used together, lambdas are useful in many other situations including callbacks and event handling.

## Interview Questions
1. What are lambdas?
2. Why were they introduced in Modern C++?
3. How do they improve readability?
4. How are lambdas related to STL algorithms?
5. Give production examples where lambdas are useful.

## Interview Traps
- Thinking lambdas are only used for interviews.
- Treating every lambda as a replacement for normal functions.
- Ignoring their relationship with algorithms and containers.

## Exercise
Implement examples using:
- `std::sort()`
- `std::find_if()`
- Lambdas that filter values greater than 10.

Explain:
- Why a lambda was chosen.
- How it improves readability.
- When a normal function might be preferable.

## 5 Minute Revision
- Lambdas are anonymous functions used extensively in Modern C++.
- They integrate naturally with STL algorithms.
- Lambdas improve readability and reduce boilerplate code.
- They are widely used in production-quality applications.
- Understanding containers, iterators, algorithms, and lambdas together is essential.

## Previous and Next Topics
- Previous: [35. Algorithms](35-algorithms.md)
- Current: **36. Lambdas**
- Next: [37. auto](37-auto.md)

## Summary
- Lambdas are one of the most useful Modern C++ features for writing expressive and maintainable code.
- They work exceptionally well with containers, iterators, and algorithms.
- Modern C++ encourages developers to compose these features together rather than using them in isolation.

## Status
Status: Topic 36 Completed (Templates, STL Containers, Iterators, Algorithms, and Lambdas completed. Continue with Topic 37 for auto and type deduction concepts).