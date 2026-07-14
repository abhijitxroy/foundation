# Phase 1 - C++ Basics (5-15 Minutes Revision)

> Remember: Don't memorize definitions. Remember the mental models.

---

## Story 1 - Why C++?

```text
C
↓
High Performance
↓
Hardware Access
↓
Large Programs became difficult
↓
C++ was introduced
↓
Performance + Modern Features
```

Remember:

- Zero-cost abstraction.
- Better suited for performance-critical systems.
- Technology choice always depends on requirements and trade-offs.

---

## Compilation Process

```text
.cpp
 ↓
Preprocessor
 ↓
Compiler
 ↓
Assembler
 ↓
Linker
 ↓
Executable
```

Remember:

- Compiler errors ≠ Linker errors.
- `#include` is handled by the preprocessor.
- C++ produces native machine code.

---

## Story 2 - Basic Building Blocks

### Variables

```text
Variable
 ↓
Name
 ↓
Type
 ↓
Value
 ↓
Memory Location
```

### Data Types

Remember:

- int
- float
- double
- char
- bool

> Data Type = Memory + Range + Operations

---

### References

```text
Reference
 ↓
Alias
 ↓
No Copy
 ↓
Same Memory Location
```

Remember:

- Must be initialized.
- Cannot be NULL.
- Cannot be reassigned.

---

### Pointers

```text
Pointer
 ↓
Stores Address
 ↓
Uses & and *
```

Remember:

- Can be NULL.
- Stores memory addresses.
- Used heavily in memory management.

---

### Functions

```text
Function
 ↓
Return Type
 ↓
Name
 ↓
Parameters
 ↓
Behaviour
```

Remember:

- Keep functions small and reusable.
- Avoid unnecessary duplication.

---

### Header Files

```text
Header File
 ↓
Declarations

.cpp File
 ↓
Implementations
```

Remember:

- `#include` copies the header contents before compilation.
- Header files improve organization and reuse.

---

### Namespaces

```text
Namespace
 ↓
Organizes Code
 ↓
Avoids Naming Conflicts
```

Remember:

- `std` is a namespace.
- `::` is the scope resolution operator.

---

## Story 3 - Object Lifetime

```text
Object Created?
 ↓
Constructor
 ↓
Copied?
 ↓
Copy Constructor
 ↓
Assigned?
 ↓
Assignment Operator
 ↓
Destroyed?
 ↓
Destructor
```

Remember:

- Constructor = Object Birth.
- Destructor = Object Death.
- Copy Constructor creates a NEW object.
- Assignment Operator updates an EXISTING object.

---

## Story 4 - Object Behaviour

### Classes & Objects

```text
Class
 ↓
Blueprint
 ↓
Creates
 ↓
Object
```

Remember:

- Class = Blueprint.
- Object = Real Instance.

---

### Static Members

```text
Object Specific?
 ↓
Normal Member

Shared Information?
 ↓
Static Member
```

Remember:

> Static = Shared by all Objects.

---

### Const Correctness

```text
Should this change?
 ↓
NO
 ↓
Use const
```

Remember:

> const = Promise Not to Modify.

---

## Interview Keywords

- Zero-cost abstraction
- Deterministic execution
- Native machine code
- References
- Pointers
- Object lifetime
- Resource management
- Constructor
- Destructor
- Copy Constructor
- Assignment Operator
- Static Members
- Const Correctness
- Namespace
- Header Files

---

## Senior-Level Thinking Pattern

Always answer:

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
Why that choice was made
```

Never say:

- Java is better.
- C++ is better.

Prefer:

- Better suited for.
- Depends on the requirements.
- Depends on the trade-offs involved.

---

## Phase-1 Summary

```text
Why C++?
 ↓
How Compilation Works?
 ↓
Basic Building Blocks
 ↓
Object Lifetime
 ↓
Object Behaviour
```

If you understand these five mental models, you understand the foundations of Phase-1.

---

## Status

- Phase Status: Completed
- Total Topics: 16
- Revision Time: 5-15 Minutes
