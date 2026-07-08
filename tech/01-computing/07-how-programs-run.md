# How Programs Run

## Overview

A program goes through multiple stages before execution. Understanding this process helps engineers understand compilers, operating systems, memory management, and runtime behavior.

## Program Execution Flow

```
Source Code
    ↓
Compiler
    ↓
Executable
    ↓
Operating System Loader
    ↓
Memory
    ↓
CPU Execution
```

## Compilation

The compiler converts human-readable source code into machine instructions that the CPU can execute.

Examples:

- Java source → Bytecode → JVM execution
- C/C++ source → Native executable

## Loading Into Memory

The operating system:

- Creates a process
- Allocates memory
- Loads program instructions
- Initializes required resources

## CPU Execution

The CPU executes instructions using:

- Registers
- Cache
- Control unit
- Arithmetic Logic Unit (ALU)

## Runtime Interaction

Programs interact with:

- Operating system services
- Memory
- Storage
- Network devices
- Hardware components

through system calls.

## Quick Summary

- Programs move through compilation, loading, and execution stages.
- The operating system manages program resources.
- The CPU executes instructions stored in memory.
- Understanding execution flow helps optimize software performance.

## Conclusion

Understanding how programs run connects software development with computer architecture, operating systems, and performance engineering.
