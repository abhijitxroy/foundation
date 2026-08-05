# Compilation Process

## Interview Objective

Understand how C++ source code is transformed into an executable and the responsibility of each stage in the build pipeline.

---

# Question 1

## Does the compiler directly convert a `.cpp` file into an executable?

### 30-Second Answer

No. A C++ program goes through multiple stages: preprocessing, compilation, assembly, and linking. The compiler is only one stage of the build process.

---

### 2-Minute Answer

A C++ source file is not converted directly into an executable.

The build process consists of four major stages:

1. Preprocessor
2. Compiler
3. Assembler
4. Linker

The preprocessor expands directives such as `#include` and macros. The compiler checks the code and generates assembly code. The assembler converts assembly into object files. Finally, the linker combines object files and required libraries to produce the executable.

Each stage has a specific responsibility, making the build process modular, scalable, and efficient.

---

### Key Points

- Multi-stage build process.
- Each stage has a dedicated responsibility.
- Compiler is only one stage.
- Executable is produced by the linker.

---

### Production Perspective

Large software systems contain thousands of source files. Separating the build into stages allows incremental builds, improves scalability, and reduces build times.

---

### Common Mistakes

- Saying the compiler creates the executable.
- Ignoring the assembler and linker.
- Mixing compiler and linker responsibilities.

---

### Follow-up Questions

- Why are multiple build stages required?
- What does the assembler produce?
- What is an object file?

---

### Interviewer's Expectation

Understand the overall build pipeline instead of memorizing the names of the stages.

---

### Revision Notes

- Preprocessor
- Compiler
- Assembler
- Linker
- Executable

---

# Question 2

## Arrange the following in the correct order.

- Source Code
- Preprocessor
- Compiler
- Assembler
- Object File
- Linker
- Executable

### 30-Second Answer

```
Source Code
    ↓
Preprocessor
    ↓
Compiler
    ↓
Assembler
    ↓
Object File
    ↓
Linker
    ↓
Executable
```

---

### 2-Minute Answer

The source code first goes through the preprocessor, which expands directives and macros.

The compiler then checks the code and generates assembly code.

The assembler converts the assembly code into object files.

Finally, the linker combines all object files and required libraries into the final executable.

---

### Key Points

- Source code is the starting point.
- Object files are intermediate artifacts.
- Executable is produced only after linking.

---

### Revision Notes

```
Source
↓
Preprocessor
↓
Compiler
↓
Assembler
↓
Object File
↓
Linker
↓
Executable
```

---

# Question 3

## Why does C++ use multiple build stages instead of directly generating an executable?

### 30-Second Answer

Separating the build process into multiple stages improves modularity, enables incremental builds, simplifies debugging, and reduces build time for large projects.

---

### 2-Minute Answer

Each stage has a specialized responsibility.

Instead of performing preprocessing, compilation, assembly, and linking together, each component focuses on a single task.

This separation makes the build process easier to maintain, improves scalability, allows reuse of unchanged object files, and significantly reduces build times in large software systems.

---

### Key Points

- Separation of responsibilities.
- Incremental builds.
- Better scalability.
- Faster development.

---

### Production Perspective

Large organizations such as AMD, Intel, Microsoft, and Google build millions of lines of code every day. Rebuilding everything after every change would be extremely inefficient.

Incremental compilation allows only modified files to be rebuilt while reusing existing object files.

---

### Common Mistakes

- Saying multiple stages exist only because C++ is old.
- Ignoring build performance.
- Ignoring incremental compilation.

---

### Follow-up Questions

- What are incremental builds?
- Why are object files useful?
- How does this improve CI/CD?

---

### Interviewer's Expectation

Understand the engineering reasons behind the build pipeline, not just the sequence of stages.

---

### Revision Notes

- Specialized stages.
- Incremental builds.
- Faster feedback.
- Better scalability.
- Improved engineering productivity.
