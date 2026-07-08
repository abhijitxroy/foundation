# Process Synchronization

## Overview

Modern applications execute multiple processes and threads concurrently. When these execution units access shared resources simultaneously, incorrect coordination can lead to inconsistent data, race conditions, deadlocks, and unpredictable behavior.

Process Synchronization provides the mechanisms that enable concurrent execution while preserving correctness, consistency, and system reliability.

## Definition

**Process Synchronization** is the operating system discipline of coordinating concurrent processes and threads so they safely access shared resources without causing data corruption or inconsistent system behavior.

Its objective is to maximize concurrency while maintaining correctness.

## Objectives

- Coordinate concurrent execution.
- Protect shared resources.
- Prevent race conditions.
- Ensure data consistency.
- Avoid deadlocks.
- Improve system reliability.

## Synchronization Workflow

```text
Multiple Threads
       │
       ▼
Shared Resource
       │
       ▼
Synchronization Mechanism
       │
       ├── Mutex
       ├── Semaphore
       ├── Monitor
       └── Condition Variable
              │
              ▼
Safe Concurrent Access
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Critical Section | Code accessing shared resources. |
| Race Condition | Multiple execution units modify shared data unpredictably. |
| Mutual Exclusion (Mutex) | Allow only one thread to access a critical section at a time. |
| Semaphore | Coordinate access using a counter. |
| Monitor | High-level synchronization construct combining shared data and synchronization. |
| Condition Variable | Allow threads to wait until a condition becomes true. |
| Deadlock | Multiple threads wait indefinitely for each other. |
| Starvation | A thread never receives required resources. |

## Synchronization Mechanisms

| Mechanism | Purpose |
|-----------|---------|
| Mutex | Exclusive access to shared resources. |
| Binary Semaphore | Similar to a mutex but implemented differently. |
| Counting Semaphore | Allow limited concurrent access. |
| Read-Write Lock | Allow multiple readers or a single writer. |
| Monitor | Simplify synchronization using language/runtime support. |
| Atomic Operations | Perform indivisible operations without interruption. |

## Race Condition Example

```text
Thread A
    │
Read Counter
    │
Modify Counter
    │
Write Counter

Thread B
    │
Read Counter
    │
Modify Counter
    │
Write Counter

Result:
Unexpected value due to concurrent access.
```

Synchronization mechanisms ensure these operations occur safely.

## Deadlock Conditions

A deadlock generally requires all four conditions:

- Mutual Exclusion
- Hold and Wait
- No Preemption
- Circular Wait

Breaking any one of these conditions can prevent deadlocks.

## Best Practices

- Minimize critical sections.
- Lock only required resources.
- Acquire locks in a consistent order.
- Prefer higher-level synchronization primitives when available.
- Reduce shared mutable state.
- Monitor synchronization bottlenecks.

## Common Mistakes

- Forgetting to release locks.
- Holding locks longer than necessary.
- Creating unnecessary shared state.
- Ignoring deadlock risks.
- Excessive synchronization reducing performance.
- Assuming concurrent code behaves deterministically.

## Interview Focus

Be prepared to explain:

- Critical Section
- Race Condition
- Mutex
- Semaphore
- Monitor
- Deadlock
- Starvation
- Read-Write Locks

## Related Topics

- Processes & Threads
- Memory Management
- CPU Scheduling
- System Calls & I/O
- Concurrent Programming

## Next

Continue with **06-scheduling.md** to understand how operating systems decide which process or thread executes next while balancing fairness, responsiveness, throughput, and resource utilization.
