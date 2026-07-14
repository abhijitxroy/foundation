# Topic 2 - Compilation Process

## What is Compilation?

Compilation is the process of converting C++ source code into an executable program.

Simply remember:

```text
.cpp file
   ↓
Preprocessor
   ↓
Compiler
   ↓
Assembler
   ↓
Linker
   ↓
Executable File
```

---

## Why does it exist?

Computers do not understand C++ code.

They understand only machine code.

The compilation process converts human-readable C++ code into machine-readable instructions.

---

## Remember

There are four major steps:

- Preprocessing
- Compilation
- Assembly
- Linking

Remember:

> Source Code → Machine Code → Executable

---

## The Four Steps

### 1. Preprocessor

Responsible for:

- #include
- #define
- Conditional compilation

Example:

```cpp
#include <iostream>
```

The preprocessor copies the required contents before compilation begins.

---

### 2. Compiler

Responsible for:

- Syntax checking
- Type checking
- Optimizations
- Converting C++ code into assembly code

Compiler errors usually occur here.

Examples:

- Missing semicolon
- Type mismatch
- Invalid syntax

---

### 3. Assembler

Responsible for:

- Converting assembly code into object files.

Produces:

```text
main.o
utils.o
```

---

### 4. Linker

Responsible for:

- Combining multiple object files.
- Resolving function definitions.
- Producing the final executable.

Examples:

```text
main.o
   ↓
utils.o
   ↓
math.o
   ↓
Linker
   ↓
app.exe
```

Many beginner C++ errors are linker errors.

---

## Java Comparison

```text
Java
-----
.java
  ↓
Compiler
  ↓
Bytecode (.class)
  ↓
JVM
  ↓
Execution


C++
-----
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
Native Executable
```

Java requires a JVM.

C++ produces native machine code.

---

## Production Examples

Compilation failures are common in:

- CMake builds
- CI/CD pipelines
- GoogleTest projects
- Static libraries
- Shared libraries

Understanding the compilation process is extremely useful when debugging build failures.

---

## Common Mistakes

- Assuming C++ is interpreted.
- Thinking #include imports libraries at runtime.
- Confusing compiler errors with linker errors.
- Assuming one .cpp file produces one executable.

---

## Interview Questions

1. What happens when a .cpp file is compiled?
2. Explain the four stages of compilation.
3. What is the difference between compiler and linker errors?
4. What is the purpose of #include?
5. Why does C++ require a linker?

---

## Interview Tips

Remember:

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

Interviewers frequently ask this flow.

Memorize it.

---

## Senior-Level Thinking

Compilation knowledge helps in understanding:

- CMake
- Static libraries
- Shared libraries
- Build failures
- Release engineering
- CI/CD pipelines
- Debugging linker issues

---

## 5 Minutes Revision

- C++ is a compiled language.
- Four major stages: Preprocessor, Compiler, Assembler and Linker.
- Compiler errors are different from linker errors.
- C++ produces native machine code.
- Linking combines multiple object files into an executable.

---

## Status

- Topic Completed: Yes
- Difficulty: Easy
- Interview Frequency: Very High

---

## Navigation

- Previous: [Topic 1 - Why C++ Exists](./01-why-cpp-exists.md)
- Next: [Topic 3 - Variables](./03-variables.md)