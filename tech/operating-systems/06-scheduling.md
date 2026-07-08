# CPU Scheduling

## Overview

Modern operating systems often manage hundreds or thousands of processes and threads simultaneously while providing the illusion that they execute at the same time. Since CPU resources are limited, the operating system must decide which task executes next, how long it executes, and when execution should switch to another task.

CPU Scheduling is fundamental to system responsiveness, fairness, throughput, and efficient resource utilization.

## Definition

**CPU Scheduling** is the operating system mechanism responsible for selecting the next process or thread to execute on the CPU.

The scheduler aims to maximize CPU utilization while balancing responsiveness, fairness, throughput, and execution efficiency.

## Objectives

- Maximize CPU utilization.
- Improve system responsiveness.
- Reduce waiting time.
- Increase throughput.
- Ensure fairness.
- Support concurrent workloads efficiently.

## Scheduling Workflow

```text
New Process
      │
      ▼
Ready Queue
      │
      ▼
CPU Scheduler
      │
      ▼
CPU Execution
      │
      ├── Completed
      ├── Waiting (I/O)
      └── Preempted
              │
              ▼
          Ready Queue
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Scheduler | Select the next process or thread for execution. |
| Ready Queue | Stores processes waiting for CPU time. |
| Context Switch | Save the current execution state and restore another. |
| Preemption | Interrupt a running process to execute another. |
| Dispatching | Transfer CPU control to the selected process. |
| Time Slice (Quantum) | Maximum CPU time allocated before preemption. |

## Scheduling Algorithms

| Algorithm | Characteristics |
|-----------|-----------------|
| First Come First Served (FCFS) | Execute processes in arrival order. |
| Shortest Job First (SJF) | Execute the shortest job first. |
| Shortest Remaining Time First (SRTF) | Preemptive version of SJF. |
| Round Robin (RR) | Allocate CPU using fixed time slices. |
| Priority Scheduling | Execute based on process priority. |
| Multilevel Queue | Separate processes into multiple queues with different scheduling policies. |
| Multilevel Feedback Queue | Dynamically adjust priorities based on process behavior. |

## Scheduling Metrics

| Metric | Purpose |
|--------|---------|
| CPU Utilization | Percentage of CPU actively executing processes. |
| Throughput | Number of completed processes per unit time. |
| Turnaround Time | Total time from process submission to completion. |
| Waiting Time | Time spent waiting in the ready queue. |
| Response Time | Time before the first response is produced. |
| Context Switch Overhead | Cost of switching between execution contexts. |

## Preemptive vs Non-Preemptive Scheduling

| Preemptive | Non-Preemptive |
|------------|----------------|
| Running processes may be interrupted. | Processes continue until completion or blocking. |
| Better responsiveness. | Lower scheduling overhead. |
| Suitable for interactive systems. | Suitable for batch workloads. |

## Best Practices

- Balance responsiveness with throughput.
- Minimize unnecessary context switches.
- Select scheduling algorithms based on workload characteristics.
- Prevent process starvation.
- Monitor scheduling performance continuously.
- Optimize CPU utilization without sacrificing fairness.

## Common Mistakes

- Assuming one scheduling algorithm fits every workload.
- Ignoring context-switch overhead.
- Starving low-priority processes.
- Using excessively small time slices.
- Measuring only CPU utilization.
- Confusing scheduling with synchronization.

## Interview Focus

Be prepared to explain:

- CPU Scheduling
- Ready Queue
- Context Switching
- FCFS
- SJF
- Round Robin
- Priority Scheduling
- Preemptive vs Non-Preemptive Scheduling
- Scheduling Metrics

## Related Topics

- Processes & Threads
- Process Synchronization
- Memory Management
- System Calls & I/O
- Performance Engineering

## Next

Continue with **07-system-calls-and-io.md** to understand how applications request operating system services and how input/output operations interact with hardware efficiently.