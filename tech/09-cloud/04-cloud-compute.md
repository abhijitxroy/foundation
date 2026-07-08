# Cloud Compute

## Overview

Compute resources power every cloud application. Whether running web applications, databases, AI workloads, batch processing, or microservices, cloud compute provides the processing capability required to execute software reliably and at scale.

Modern cloud platforms offer multiple compute models—from Virtual Machines and Containers to Serverless Computing—allowing engineers to balance flexibility, performance, operational effort, and cost.

## Definition

**Cloud Compute** is the cloud service responsible for providing on-demand processing resources that execute applications, services, and workloads using virtualized or managed computing environments.

It enables applications to scale dynamically while abstracting much of the underlying hardware infrastructure.

## Objectives

- Understand cloud compute models.
- Learn compute resource provisioning.
- Compare Virtual Machines, Containers, and Serverless.
- Understand autoscaling.
- Learn load balancing concepts.
- Select appropriate compute services.

## Cloud Compute Architecture

```text
Users
   │
   ▼
Load Balancer
   │
   ▼
Cloud Compute
   │
   ├── Virtual Machines
   ├── Containers
   ├── Serverless Functions
   └── Managed Compute Services
          │
          ▼
Virtualized Infrastructure
          │
          ▼
Physical Hardware
```

## Core Compute Models

| Compute Model | Purpose |
|--------------|---------|
| Virtual Machine (VM) | Full operating system running on virtualized hardware. |
| Container | Lightweight application runtime sharing the host operating system kernel. |
| Serverless Computing | Execute event-driven code without managing servers. |
| Managed Compute | Cloud provider manages infrastructure while applications run on managed platforms. |

## Virtual Machines vs Containers vs Serverless

| Virtual Machine | Container | Serverless |
|-----------------|-----------|------------|
| Complete operating system | Shared host kernel | No infrastructure management |
| Highest flexibility | Lightweight deployment | Event-driven execution |
| Slower startup | Fast startup | Near-instant provisioning |
| Higher operational effort | Moderate operational effort | Lowest operational effort |
| Suitable for long-running workloads | Suitable for microservices | Suitable for short-lived event processing |

## Autoscaling

Autoscaling automatically adjusts compute resources based on workload demand.

Benefits include:

- Improved availability.
- Better performance.
- Reduced operational effort.
- Cost optimization.

## Load Balancing

Load balancing distributes incoming traffic across multiple compute resources to:

- Improve availability.
- Prevent overload.
- Increase scalability.
- Enhance fault tolerance.

## Best Practices

- Choose the simplest compute model that satisfies requirements.
- Design stateless applications where possible.
- Enable autoscaling for variable workloads.
- Monitor compute utilization continuously.
- Apply resource limits appropriately.
- Optimize cost through right-sizing.

## Common Mistakes

- Overprovisioning compute resources.
- Selecting Virtual Machines for workloads better suited to containers.
- Ignoring autoscaling.
- Running stateful workloads without proper design.
- Assuming serverless is always the best option.
- Neglecting performance monitoring.

## Interview Focus

Be prepared to explain:

- Cloud Compute
- Virtual Machines
- Containers
- Serverless Computing
- Managed Compute
- Autoscaling
- Load Balancing
- Choosing compute models

## Related Topics

- Cloud Service Models
- Operating Systems
- Virtualization & Containers
- Cloud Networking
- Cloud Operations

## Next

Continue with **05-cloud-storage.md** to understand object, block, and file storage, along with durability, backup, lifecycle management, and cloud storage architectures.
