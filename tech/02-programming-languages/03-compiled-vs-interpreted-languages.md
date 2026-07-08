# Compiled vs Interpreted Languages

## Overview

Programming languages need to be translated into instructions that computers can execute. The two common execution approaches are compilation and interpretation.

## Compiled Languages

A compiler converts the complete source code into machine code before execution.

Flow:
# Compiled vs Interpreted Languages

## Overview

Programming languages need to be translated into instructions that computers can execute. The two common execution approaches are compilation and interpretation.

## Compiled Languages

A compiler converts the complete source code into machine code before execution.

Flow:

```
Source Code
     ↓
Compiler
     ↓
Machine Code
     ↓
Program Execution
```

Examples:

- C
- C++
- Rust
- Go

Characteristics:

- Faster execution
- Native machine instructions
- Errors detected during compilation
- Requires a build step

## Interpreted Languages

An interpreter executes program instructions at runtime.

Flow:

```
Source Code
     ↓
Interpreter
     ↓
Program Execution
```

Examples:

- Python
- JavaScript
- Ruby

Characteristics:

- Faster development cycle
- No separate compilation step
- Easier debugging
- Runtime execution overhead

## Hybrid Execution Model

Some languages use a combination of compilation and interpretation.

Example:

### Java

Flow:

```
Java Source Code
       ↓
Java Compiler
       ↓
Bytecode
       ↓
JVM Interpreter / JIT Compiler
       ↓
Machine Code Execution
```

The Java Virtual Machine provides portability across different platforms.

## Compiler Responsibilities

A compiler performs:

- Lexical analysis
- Syntax analysis
- Optimization
- Code generation

## Interpreter Responsibilities

An interpreter:

- Reads instructions
- Executes operations
- Manages runtime behavior

## Just-In-Time (JIT) Compilation

JIT compilation combines benefits of compilation and interpretation.

Process:

- Program starts execution
- Runtime analyzes frequently used code
- Hot code is compiled into optimized machine code

Examples:

- JVM
- .NET Runtime
- JavaScript engines

## Comparison

| Compiled | Interpreted |
|---|---|
| Converted before execution | Executed during runtime |
| Usually faster | Usually more flexible |
| Requires build process | Faster development cycle |
| Native machine code | Runtime execution |

## Quick Summary

- Compilers translate programs before execution.
- Interpreters execute programs at runtime.
- Many modern languages use hybrid approaches.
- Runtime environments like JVM and .NET use JIT optimization.

## Next

Continue with **04-memory-management.md** to learn how programming languages handle memory allocation, usage, and cleanup.
