# Common Interview Questions

> This file captures frequently asked Modern C++ and AMD SMTS interview questions. The answers will be added gradually as we progress through the roadmap.

---

## Phase 1 - C++ Basics

### Why C++?

- Why was C++ created if C already existed?
- What is Zero-Cost Abstraction?
- Why would AMD choose C++ over Java for GPU drivers?
- Name three advantages of Java over C++.
- Name three advantages of C++ over Java.

---

### Compilation Process

- Explain the C++ compilation process.
- What is the difference between compiler and linker errors?
- What is the purpose of `#include`?
- Why does C++ require a linker?

---

### Variables and Data Types

- What is a variable?
- What is a data type?
- What happens when a variable is created?
- Why can data type sizes differ across platforms?
- What problems can occur when choosing an incorrect data type?

---

### References and Pointers

- What is a reference?
- What is a pointer?
- Pointer vs Reference?
- What is the difference between `&` and `*`?
- Can references be NULL?
- Can pointers be NULL?
- When should you use references?
- When should you use pointers?

---

### Functions and Header Files

- What is a function?
- Why do functions exist?
- What is the purpose of header files?
- What is the difference between declarations and implementations?
- What does `#include` actually do?

---

### Namespaces

- What is a namespace?
- What is `std`?
- What is the scope resolution operator (`::`)?
- Why should `using namespace std;` be avoided in production code?

---

### Classes and Objects

- What is a class?
- What is an object?
- Class vs Object?
- Why are classes important in Modern C++?

---

### Object Lifetime

- What is a constructor?
- When is a constructor called?
- What is a destructor?
- When is a destructor called?
- What is a copy constructor?
- What is the difference between a copy constructor and an assignment operator?
- Does assignment create a new object?

Remember:

```text
New Object?
      ↓
Constructor

Copied?
      ↓
Copy Constructor

Existing Object Updated?
      ↓
Assignment Operator

Object Dies?
      ↓
Destructor
```

---

### Static Members and Const Correctness

- What are static members?
- Why do static members exist?
- What is const correctness?
- Why is const correctness important?
- How does const improve API design?

---

## Senior-Level Questions

Interviewers frequently ask:

- Why was this technology chosen?
- What problem does it solve?
- What are the trade-offs involved?
- How is it used in production?
- What alternatives exist?
- What are the performance implications?

Always think:

```text
Problem
 ↓
Requirements
 ↓
Constraints
 ↓
Trade-offs
 ↓
Technology Selection
 ↓
Production Considerations
```

---

## AMD SMTS Preparation

High Priority:

- Memory Management
- RAII
- Smart Pointers
- Move Semantics
- GoogleTest
- Debugging
- CMake
- Build Systems
- Platform Engineering
- Production Thinking

These sections will continue to grow throughout the preparation journey.

---

## Repository Philosophy

Remember:

> Learn the concepts.
>
> Remember the mental models.
>
> Think about trade-offs.
>
> Be interview ready.

---

## Status

- Current Coverage: Phase-1
- Preparation Status: In Progress
- Difficulty: Beginner to Senior-Level Discussions