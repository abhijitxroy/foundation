# 35. Algorithms

## Topic Overview
- Importance: ★★★★★ MUST KNOW
- Interview Frequency: Very High
- Estimated Study Time: 45-60 Minutes

## Why Should You Learn This Topic?
The STL algorithms library provides efficient and reusable implementations of common operations such as sorting, searching, counting, and transforming data. Modern C++ encourages developers to prefer STL algorithms over handwritten loops whenever appropriate.

## Learning Objectives
- Understand what STL algorithms are.
- Learn why they exist.
- Recognize commonly used algorithms.
- Understand how algorithms work together with iterators and containers.
- Prepare for common interview questions.

## Beginner Level – What are Algorithms?
Simply put:

> Algorithms are reusable functions that perform common operations on data.

Examples include:
- `std::sort()`
- `std::find()`
- `std::count()`
- `std::for_each()`
- `std::find_if()`
- `std::transform()`

Rather than writing custom loops repeatedly, Modern C++ allows developers to reuse well-tested library implementations.

## Why Do Algorithms Exist?
Without algorithms, developers frequently write:
- Sorting logic.
- Searching logic.
- Counting logic.
- Transformation logic.

Problems include:
- Code duplication.
- Reduced readability.
- Increased maintenance costs.
- Greater chances of introducing bugs.

STL algorithms provide reusable and highly optimized solutions.

## Real World Analogy
Think of a calculator.

Instead of manually implementing addition every time, you simply use the '+' operation.

Similarly, instead of writing custom sorting or searching logic repeatedly, Modern C++ provides reusable algorithms that are optimized and easy to understand.

## Java Developer's Corner
Java developers may compare STL algorithms with:

```java
Collections.sort();
Collections.max();
stream().filter();
```

Modern C++ provides similar capabilities using:

```cpp
std::sort();
std::find();
std::count();
```

Algorithms work together with containers and iterators to provide highly reusable designs.

## Simple Examples

### Sorting

```cpp
#include <algorithm>
#include <vector>

std::vector<int> numbers {4,2,1,3};

std::sort(numbers.begin(), numbers.end());
```

### Finding an Element

```cpp
auto iterator = std::find(
    numbers.begin(),
    numbers.end(),
    3);
```

### Counting Values

```cpp
int count = std::count(
    numbers.begin(),
    numbers.end(),
    3);
```

Notice that algorithms work with iterators rather than directly with containers.

## Engineer Level Thinking
Before writing a loop, ask yourself:

> Does the STL already provide an algorithm for this operation?

Modern C++ generally prefers:

```text
Container
    ↓
Iterator
    ↓
Algorithm
    ↓
Result
```

Using STL algorithms often produces:
- Cleaner code.
- Better readability.
- Improved maintainability.
- Fewer bugs.

## Production Examples
Algorithms are extensively used by:
- Modern C++ libraries.
- STL containers.
- Testing frameworks.
- Platform engineering tooling.
- High-performance applications.
- Production-quality APIs.

Some of the most frequently used algorithms include:
- `std::sort()`
- `std::find()`
- `std::find_if()`
- `std::count()`
- `std::transform()`

## AMD SMTS Perspective
This is a MUST KNOW interview topic.

Interviewers may ask:
- Why should we prefer STL algorithms over handwritten loops?
- How are algorithms related to iterators?
- What are commonly used STL algorithms?
- Why are algorithms important for generic programming?
- How do lambdas improve the usability of algorithms?

### Why Should I Care as a Platform Engineer?
- Improves maintainability.
- Reduces code duplication.
- Encourages Modern C++ best practices.
- Produces cleaner and more reusable code.
- Frequently appears in production code reviews.

## Common Mistakes
- Writing custom loops unnecessarily.
- Ignoring existing STL algorithms.
- Treating algorithms as merely interview topics.
- Forgetting that algorithms primarily operate on iterators.

## Common Confusions

### Confusion 1

> Do algorithms work only with vectors?

No.

Many algorithms work with multiple containers through iterators.

### Confusion 2

> Should I always prefer algorithms over loops?

Not necessarily.

Algorithms should be preferred when they improve readability, maintainability, and correctness.

## Interview Questions
1. What are STL algorithms?
2. Why do we need them?
3. Why do algorithms prefer iterators instead of containers?
4. What are some commonly used STL algorithms?
5. Why are algorithms important in Modern C++?

## Interview Traps
- Assuming algorithms work only with vectors.
- Ignoring their relationship with iterators.
- Writing handwritten loops when reusable algorithms are available.

## Exercise
Create examples using:
- `std::sort()`
- `std::find()`
- `std::count()`

Explain:
- Which algorithm was chosen.
- Why it improves readability.
- How it works together with iterators.

## 5 Minute Revision
- STL algorithms provide reusable implementations of common operations.
- They primarily work with iterators.
- Algorithms improve readability and maintainability.
- Modern C++ encourages developers to prefer reusable algorithms when appropriate.
- Algorithms naturally lead to lambdas for writing custom logic.

## Previous and Next Topics
- Previous: [34. Iterators](34-iterators.md)
- Current: **35. Algorithms**
- Next: [36. Lambdas](36-lambdas.md)

## Summary
- STL algorithms are foundational to Modern C++ generic programming.
- They work together with containers and iterators to provide efficient and reusable designs.
- Understanding when to use algorithms is more important than memorizing every available API.

## Status
Status: Topic 35 Completed (Revisit after Topic 36 for Lambdas to understand how custom behavior can be provided to STL algorithms).