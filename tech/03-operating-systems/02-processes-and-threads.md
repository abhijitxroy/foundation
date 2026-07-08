# Processes & Threads

## Overview

Every application running on a computer is executed as one or more processes and threads. Modern software systems—from web servers and databases to browsers and cloud platforms—rely on concurrent execution to maximize CPU utilization, improve responsiveness, and efficiently handle multiple tasks.

Understanding processes and threads is fundamental for building scalable, high-performance, and reliable software.

## Definition

A **Process** is an independent program in execution with its own memory space, system resources, and execution context.

A **Thread** is the smallest unit of execution within a process. Multiple threads can exist within the same process and share its resources while executing concurrently.

## Objectives

- Understand process execution.
- Learn thread-based concurrency.
- Distinguish processes from threads.
- Understand process lifecycle.
- Learn context switching.
- Prepare for synchronization and scheduling.

## Execution Model

```text
Application
      │
      ▼
Process
      │
 ┌────┴────┐
 ▼         ▼
Thread 1  Thread 2
      │
      ▼
CPU Scheduler
      │
      ▼
CPU Execution
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Process | Independent executing program. |
| Thread | Lightweight execution unit within a process. |
| Process Control Block (PCB) | Stores process state and execution information. |
| Thread Control Block (TCB) | Stores thread execution information. |
| Context Switch | Save one execution context and restore another. |
| Concurrency | Multiple tasks make progress during overlapping time periods. |
| Parallelism | Multiple tasks execute simultaneously on different CPU cores. |

## Process vs Thread

| Process | Thread |
|---------|--------|
| Independent execution environment | Executes within a process |
| Own memory space | Shares process memory |
| Higher creation cost | Lower creation cost |
| Better isolation | Faster communication |
| Failure usually isolated | Thread failure may affect the entire process |

## Process Lifecycle

```text
New
 │
 ▼
Ready
 │
 ▼
Running
 │
 ├──────────────┐
 ▼              │
Waiting         │
 │              │
 └──────► Ready │
                │
                ▼
           Terminated
```

## Multithreading Benefits

- Improved responsiveness.
- Better CPU utilization.
- Efficient resource sharing.
- Lower overhead than processes.
- Higher application throughput.
- Support for concurrent workloads.

## Inter-Process Communication (IPC)

Processes communicate using mechanisms such as:

- Pipes
- Shared Memory
- Message Queues
- Sockets
- Signals

## Best Practices

- Use threads for lightweight concurrent tasks.
- Minimize shared mutable state.
- Design thread-safe applications.
- Keep context switching overhead low.
- Use IPC mechanisms appropriately.
- Monitor process and thread resource usage.

## Common Mistakes

- Confusing concurrency with parallelism.
- Creating excessive threads.
- Sharing data without synchronization.
- Ignoring thread safety.
- Blocking threads unnecessarily.
- Using processes when threads are more appropriate.

## Interview Focus

Be prepared to explain:

- Process vs Thread
- PCB vs TCB
- Context Switching
- Concurrency vs Parallelism
- Process Lifecycle
- Multithreading
- Inter-Process Communication (IPC)

## Related Topics

- Operating System Foundations
- Memory Management
- Process Synchronization
- CPU Scheduling
- System Calls & I/O

## Next

Continue with **03-memory-management.md** to understand how operating systems allocate, protect, and optimize memory while supporting efficient application execution.
