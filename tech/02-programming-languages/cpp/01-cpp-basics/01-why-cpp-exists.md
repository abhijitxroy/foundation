# Topic 1 - Why C++ Exists

## What is C++?

- C++ is an extension of C.
- It was designed to provide powerful abstractions without sacrificing performance.
- It combines high performance, low-level control, and modern programming features.

---

## Why was C++ created?

C provides:
- High performance
- Low-level hardware access
- Efficient memory management

However, building large software systems in C becomes difficult because it lacks higher-level language features.

C++ adds:
- Classes and Objects
- Encapsulation
- Inheritance
- Code Reuse
- Generic Programming
- Modern Language Features

The goal was to improve software maintainability while preserving C's strengths.

---

## Zero-Cost Abstraction

Two simple rules:

1. You don't pay for what you don't use.
2. What you do use should be highly efficient.

Examples (we will learn these later):
- Templates
- constexpr
- RAII
- STL Containers

---

## Java vs C++

| Java | C++ |
|------|------|
| Runs on JVM | Compiles to native machine code |
| Automatic Garbage Collection | Manual or smart-pointer based memory management |
| Better suited for enterprise applications | Better suited for performance-critical systems |
| Higher level abstraction | Greater low-level control |

---

## Why AMD uses C++?

Performance-critical software such as:

- GPU Drivers
- Compilers
- Debuggers
- Runtime Libraries

require:

- Deterministic execution
- Low latency
- Hardware access
- Predictable performance
- Memory control

These are areas where C++ is generally preferred.

---

## Interview Tips

Avoid:

- Java is better than C++.
- C++ is better than Java.

Prefer:

- Java is better suited for enterprise applications.
- C++ is better suited for performance-critical systems.
- The language choice depends on requirements and trade-offs.

---

## Senior-Level Thinking Pattern

Always think:

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
Why that technology was chosen

---

## Common Interview Questions

1. Why was C++ created if C already existed?
2. What is Zero-Cost Abstraction?
3. Why would AMD choose C++ over Java for GPU drivers?
4. Name three advantages of Java over C++.
5. Name three advantages of C++ over Java.

---

## Status

- Topic Completed: Yes
- Difficulty: Easy
- Interview Frequency: High

---

## Next Topic

- [Topic 2 - Compilation Process](./02-compilation-process.md)
