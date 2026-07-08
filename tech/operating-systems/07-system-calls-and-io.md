# System Calls & I/O

## Overview

Applications cannot directly access hardware resources such as memory, storage, network interfaces, or peripheral devices. Instead, they request services from the operating system through system calls. The operating system then safely manages hardware access, resource allocation, and input/output (I/O) operations.

Understanding system calls and I/O helps engineers write efficient software, optimize application performance, troubleshoot system behavior, and understand how applications interact with the operating system.

## Definition

A **System Call** is the controlled interface through which an application requests services from the operating system kernel.

**Input/Output (I/O)** refers to the transfer of data between applications and external resources such as storage devices, network interfaces, keyboards, displays, and other hardware.

Together, they provide the bridge between user applications and system resources.

## Objectives

- Understand system calls.
- Learn User Mode and Kernel Mode execution.
- Understand file and network I/O.
- Learn interrupt-driven processing.
- Improve I/O efficiency.
- Build the foundation for virtualization and containers.

## System Call Flow

```text
Application
      │
      ▼
Library/API
      │
      ▼
System Call
      │
      ▼
Kernel
      │
      ├── File System
      ├── Memory Manager
      ├── Process Manager
      ├── Network Stack
      └── Device Drivers
             │
             ▼
Hardware Devices
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| System Call | Request operating system services. |
| User Mode | Restricted execution environment for applications. |
| Kernel Mode | Privileged execution environment with hardware access. |
| Interrupt | Notify the CPU that immediate attention is required. |
| Device Driver | Enable communication between the OS and hardware devices. |
| Buffering | Temporarily store data during transfers. |
| DMA (Direct Memory Access) | Transfer data between devices and memory with minimal CPU involvement. |

## Common Categories of System Calls

| Category | Purpose |
|----------|---------|
| Process Control | Create, terminate, and manage processes. |
| File Management | Open, read, write, and close files. |
| Device Management | Access and control hardware devices. |
| Memory Management | Allocate and release memory. |
| Network Communication | Send and receive network data. |
| Information Management | Retrieve system and process information. |

## I/O Models

| Model | Characteristics |
|-------|-----------------|
| Blocking I/O | The calling thread waits until the operation completes. |
| Non-Blocking I/O | Returns immediately, allowing other work to continue. |
| Asynchronous I/O | The operation executes independently, notifying completion later. |
| Buffered I/O | Uses temporary memory buffers to improve efficiency. |

## Interrupt Handling

```text
Hardware Event
       │
       ▼
Interrupt
       │
       ▼
CPU Suspends Current Task
       │
       ▼
Interrupt Handler
       │
       ▼
Resume Previous Task
```

Interrupts allow the operating system to respond efficiently to hardware events without continuously polling devices.

## Best Practices

- Minimize unnecessary system calls.
- Batch I/O operations where appropriate.
- Use asynchronous I/O for high-concurrency applications.
- Avoid blocking critical execution paths.
- Monitor I/O performance continuously.
- Understand the cost of context switches between User Mode and Kernel Mode.

## Common Mistakes

- Excessive system call overhead.
- Performing unnecessary disk I/O.
- Blocking threads unnecessarily.
- Ignoring I/O bottlenecks.
- Assuming all I/O operations have equal cost.
- Confusing interrupts with polling.

## Interview Focus

Be prepared to explain:

- System Calls
- User Mode vs Kernel Mode
- Blocking vs Non-Blocking I/O
- Asynchronous I/O
- Interrupts
- Device Drivers
- DMA
- Buffering

## Related Topics

- CPU Scheduling
- Memory Management
- File Systems
- Networking
- Virtualization & Containers

## Next

Continue with **08-virtualization-and-containers.md** to understand how operating systems provide resource isolation, virtual machines, and container technologies that power modern cloud infrastructure.
