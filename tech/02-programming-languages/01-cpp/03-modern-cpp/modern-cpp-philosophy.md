# Modern C++ Philosophy

## Why this document exists

This document is the foundation for the Modern C++ learning journey.

Instead of learning isolated language features, learn Modern C++ by understanding **ownership**, **resource management**, **object lifetime**, and **compiler thinking**.

Most Modern C++ features are simply different solutions to the same question:

> **Who owns the resource, and what should happen to it during the object's lifetime?**

---

# The Modern C++ Thinking Model

```text
Object
    ↓
Ownership
    ↓
Resource
    ↓
Object Lifetime
    ↓
Compiler Question
    ↓
Language Feature
    ↓
Safe Resource Management
```

Always think in this order.

---

# Ownership First

Before writing code, ask:

```text
Does this object own a resource?
```

If **No**:

- Prefer simple value types.
- Prefer the Rule of Zero.
- Let the compiler generate special member functions.

If **Yes**:

- Clearly define ownership.
- Manage the resource using RAII.
- Think about copy, move and destruction.

---

# Object vs Resource

Never confuse an object with the resource it manages.

```text
Object
    ↓
Owns Resource
    ↓
Uses Pointer / Handle
    ↓
Accesses Resource
```

Examples:

- `int*` → Heap memory
- `FILE*` → Open file
- Socket handle → Network socket
- GPU handle → GPU resource

The pointer or handle is not the valuable thing.

The resource is.

---

# Object Lifecycle

Every resource-owning object experiences lifecycle events.

```text
Object Created
        ↓
Copy Created
        ↓
Move Created
        ↓
Copy Assigned
        ↓
Move Assigned
        ↓
Object Destroyed
```

Every special member function exists because the compiler needs an answer for one of these events.

---

# Compiler Thinking

Whenever you read C++ code, think like the compiler.

Ask these questions in order:

```text
1. Is a new object being created?
        ↓
        Yes → Constructor
        No  → Assignment

2. Is the source an lvalue or an rvalue?
        ↓
        lvalue → Copy
        rvalue → Move

3. Does the object own resources?
        ↓
        Yes → Ownership must remain correct.
```

---

# Modern C++ Philosophy

The compiler is conservative.

It assumes:

```text
You still need your resources.
```

It never assumes:

```text
You are finished with them.
```

The programmer must explicitly express intent.

Examples:

- `std::move()` → Permission to treat an expression as movable.
- `std::unique_ptr` → Single ownership.
- `std::shared_ptr` → Shared ownership.
- `std::weak_ptr` → Observation without ownership.

---

# The Learning Journey

```text
RAII
    ↓
Smart Pointers
    ↓
lvalue / rvalue
    ↓
std::move()
    ↓
Move Constructor
    ↓
Move Assignment
    ↓
Rule of Three
    ↓
Rule of Five
    ↓
Rule of Zero
```

Every topic builds on the previous one.

---

# Final Principle

Do not memorize Modern C++ features.

Instead, answer these four questions:

```text
What resource is involved?
        ↓
Who owns it?
        ↓
What lifecycle event is happening?
        ↓
How should ownership change?
```

If you can answer those questions, most Modern C++ features become intuitive rather than something to memorize.