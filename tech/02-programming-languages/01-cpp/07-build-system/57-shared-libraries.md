# 57. Shared Libraries

## Topic Overview
- Importance: ★★★★★ MUST KNOW
- Interview Frequency: High
- Estimated Study Time: 45-60 Minutes

## Why Should You Learn This Topic?
Shared libraries allow multiple applications to reuse the same implementation without embedding separate copies into every executable. They improve code reuse, simplify updates, and play an important role in large-scale Modern C++ projects, CI/CD pipelines, and production deployments.

## Learning Objectives
- Understand what shared libraries are.
- Learn why they exist.
- Understand the trade-offs between static and shared libraries.
- Recognize common production scenarios.
- Prepare for build-system-oriented interview questions.

## Beginner Level – What are Shared Libraries?
Simply put:

> A shared library is reusable code that can be shared by multiple applications.

Think of it as:

```text
Application-A
      ↓
      |
      ↓
Shared Library
      ↑
      |
      ↓
Application-B
      ↑
      |
      ↓
Application-C
```

Instead of maintaining separate copies everywhere, applications can reuse a common implementation.

## Why Do Shared Libraries Exist?
Shared libraries provide:
- Better code reuse.
- Easier maintenance.
- Simpler deployments in many situations.
- Improved scalability.
- Better separation of components.

They become particularly useful when multiple applications depend upon the same functionality.

## Real World Analogy
Imagine an apartment complex.

```text
Without Sharing
----------------
Every Apartment Owns:
- Water System
- Electricity System
- Security System

Difficult to Maintain.


With Sharing
-------------
All Apartments Share:
- Security System
- Electricity Infrastructure
- Water Infrastructure

Much Easier !!!
```

Similarly, shared libraries allow multiple applications to reuse common functionality efficiently.

## Java Developer's Corner
Java developers commonly think about:

```text
Shared Dependencies
       ↓
Reusable Components
```

Modern C++ commonly uses:

```text
Shared Libraries
       ↓
Reusable Components
```

The underlying goal remains the same:

> Improve maintainability and code reuse.

## Static vs Shared Libraries

```text
Static Libraries
----------------
Application
      ↓
Own Copy of Library
      ↓
Executable


Shared Libraries
----------------
Multiple Applications
      ↓
Share Common Library
      ↓
Reusable Components
```

The most important interview question is NOT:

> What is a .dll or .so file?

It is:

> Why was a Shared Library chosen?

## Simple Examples

### Creating a Shared Library

```cmake
add_library(logging SHARED logging.cpp)
```

### Using the Library

```cmake
target_link_libraries(app logging)
```

For interview preparation, focus on understanding the engineering trade-offs rather than memorizing platform-specific file extensions.

## Engineer Level Thinking
Whenever reusable components exist, ask:

1. Should this component become a library?
2. Should it be Static or Shared?
3. Will multiple applications reuse it?
4. Can deployments become simpler?
5. Will the design scale as the project grows?

Shared libraries are fundamentally about scalability, maintainability, and code reuse.

## Production Examples
Shared libraries are extensively used for:
- SDKs.
- Logging frameworks.
- Platform engineering tooling.
- Internal frameworks.
- Cross-platform libraries.
- Large-scale production systems.

Many production applications rely heavily upon reusable shared components.

## Production Bug Example

```text
Problem
-------
Five different applications
require identical updates.

Question
--------
Can maintaining a shared
component simplify releases?

Root Cause
----------
Poor Component Reuse Strategy.
```

## Debugging Perspective

```text
Problem
-------
Maintaining multiple copies of
identical implementations has
become difficult.

Ask
---
1. Can code reuse be improved?
2. Should this become a shared library?
3. Can deployments become simpler?
4. Can CI/CD pipelines manage releases effectively?
5. Will maintenance become easier?
```

## AMD SMTS Perspective
This is a MUST KNOW interview topic.

Interviewers may ask:
- What are shared libraries?
- Why do they exist?
- What is the difference between static and shared libraries?
- Why are shared libraries useful in large projects?
- How would you organize reusable components?

### Why Should I Care as a Platform Engineer?
- Closely aligns with Platform Engineering responsibilities.
- Frequently appears in system-level interviews.
- Improves scalability decisions.
- Reinforces CI/CD concepts.
- Essential for production-quality Modern C++ projects.

## What Would a Senior Engineer Do?

```text
Junior Engineer
---------------
What is a shared library?

        ↓

Mid Level Engineer
-----------------
Should this component be Static
or Shared?

        ↓

Senior Engineer
---------------
Why was a Shared Library chosen?

Can deployments become simpler?

Can multiple applications
benefit from code reuse?

Will the project scale better?
```

## Modern C++ Build Philosophy

```text
Source Files
      ↓
Libraries
      ↓
Executables
      ↓
Tests
      ↓
CI/CD Pipelines
      ↓
Production Releases
      ↓
Scalable Modern C++ Projects
```

## Common Mistakes
- Choosing libraries without understanding trade-offs.
- Ignoring maintainability considerations.
- Ignoring scalability requirements.
- Treating shared libraries as merely interview topics.
- Focusing only on platform-specific file extensions.

## Common Confusions

### Confusion 1

> Are shared libraries always better than static libraries?

No.

The correct choice depends upon the project's requirements and engineering trade-offs.

### Confusion 2

> Should interviews focus primarily on `.dll` and `.so` files?

Understanding why shared libraries exist is significantly more important than memorizing file names.

## Interview Questions
1. What are shared libraries?
2. Why do they exist?
3. What are the differences between static and shared libraries?
4. Why are they useful for large projects?
5. How would you decide between the two approaches?

## Senior Engineer Questions
1. Can this component become reusable?
2. Should it be Static or Shared?
3. Will the project scale as it grows?
4. Can releases become simpler?
5. Can CI/CD pipelines manage deployments effectively?

## Interview Traps
- Thinking shared libraries are always superior.
- Ignoring engineering trade-offs.
- Ignoring scalability considerations.

## Exercise
For each scenario explain:
- Should the component be Static or Shared?
- Why?
- How would maintainability improve?

```cmake
add_library(logging SHARED logging.cpp)
```

```cmake
target_link_libraries(app logging)
```

Explain why large production systems frequently organize reusable functionality into shared components.

## 5 Minute Revision
- Shared libraries improve code reuse and scalability.
- Static and shared libraries solve different problems.
- Engineering trade-offs determine which approach is appropriate.
- CI/CD pipelines frequently manage reusable components independently.
- Always ask whether project organization will scale.

## Previous and Next Topics
- Previous: [56. Static Libraries](56-static-libraries.md)
- Current: **57. Shared Libraries**
- Next: [08-interview-preparation/README.md]

## Summary
- Shared libraries are fundamental building blocks of scalable Modern C++ systems.
- Understanding the trade-offs between static and shared libraries is essential for production-quality software development.
- Modern C++ encourages developers to make engineering decisions based upon maintainability, scalability, performance, and deployment requirements.

## Status
Status: Topic 57 Completed (Build System phase completed. Continue with Phase 8 for comprehensive AMD SMTS interview preparation and Senior Modern C++ engineering discussions).