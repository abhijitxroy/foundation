# Topic 8 - Header Files

## What is a Header File?

A header file is used to declare:

- Functions
- Classes
- Constants
- Types
- Interfaces shared across multiple source files

Common extensions are:

```text
.h
.hpp
```

---

## Why do Header Files exist?

Header files help us to:

- Separate declarations from implementations.
- Improve code organization.
- Promote code reuse.
- Share interfaces across multiple files.

---

## Remember

```text
Header File
     ↓
Declarations

Source File
     ↓
Implementations
```

Remember:

> Header Files = What exists.
>
> Source Files = How it works.

---

## Simple Example

Header file:

```cpp
// math.h

int add(int a, int b);
```

Source file:

```cpp
// math.cpp

int add(int a, int b)
{
    return a + b;
}
```

Usage:

```cpp
#include "math.h"
```

---

## Java Comparison

```text
Java
-----
Everything is usually inside a class.


C++
-----
Declarations and implementations are often separated.
```

Header files are one of the biggest differences between Java and C++ development.

---

## What does #include do?

Remember:

```text
#include
    ↓
Copies the contents of the header file
    ↓
Before compilation begins.
```

`#include` is handled by the preprocessor.

It is NOT a runtime operation.

---

## Production Examples

Header files are heavily used in:

- Libraries
- Frameworks
- Build systems
- GoogleTest
- Large C++ projects

Almost every production C++ project uses header files extensively.

---

## Common Mistakes

- Confusing declarations with implementations.
- Thinking `#include` happens at runtime.
- Writing everything in a single file.
- Creating circular dependencies between headers.

---

## Interview Questions

1. What is a header file?
2. Why do header files exist?
3. What is the purpose of `#include`?
4. What is the difference between `.h` and `.cpp` files?
5. Why are header files important in large projects?

---

## Interview Tips

Remember:

```text
math.h
   ↓
Declaration

math.cpp
   ↓
Implementation

main.cpp
   ↓
Uses both
```

Interviewers frequently ask:

- What does `#include` do?
- Compiler vs Preprocessor.
- Declaration vs Implementation.
- Header files in large projects.

---

## Senior-Level Thinking

Understanding header files is important for:

- Build systems
- CMake
- Static libraries
- Shared libraries
- Compile times
- Large-scale C++ projects

We will revisit header files when learning CMake and libraries.

---

## 5 Minutes Revision

- Header files contain declarations.
- Source files contain implementations.
- `#include` is handled by the preprocessor.
- Header files improve code organization and reuse.
- Large C++ projects heavily rely on header files.

---

## Status

- Topic Status: Pending Discussion
- Difficulty: Easy
- Interview Frequency: Very High

---

## Navigation

- Previous: [Topic 7 - Functions](./07-functions.md)
- Next: [Topic 9 - Namespaces](./09-namespaces.md)