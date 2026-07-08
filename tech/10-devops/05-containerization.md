# Containerization

## Overview

Modern applications must run consistently across development, testing, staging, and production environments. Containerization packages applications together with their runtime, libraries, and dependencies into portable, isolated units that can be built once and executed consistently anywhere.

Containerization has become the foundation of cloud-native software development and modern DevOps practices.

## Definition

Containerization is the engineering practice of packaging an application and all of its runtime dependencies into a lightweight, isolated, and portable container.

Containers provide consistent execution environments while sharing the host operating system kernel, making them significantly more efficient than traditional virtual machines.

## Objectives

- Ensure consistent application execution.
- Improve deployment reliability.
- Simplify dependency management.
- Increase infrastructure utilization.
- Accelerate software delivery.
- Enable cloud-native development.

## Evolution

```text
Physical Servers
        │
        ▼
Virtual Machines
        │
        ▼
Containers
        │
        ▼
Container Orchestration
        │
        ▼
Cloud-Native Platforms
```

## Container Architecture

```text
Application
      │
      ▼
Runtime
      │
      ▼
Libraries & Dependencies
      │
      ▼
Container Image
      │
      ▼
Container Runtime
      │
      ▼
Host Operating System
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Container | Isolated runtime environment for an application. |
| Container Image | Immutable package containing application and dependencies. |
| Container Runtime | Executes and manages containers. |
| Container Registry | Stores and distributes container images. |
| Layers | Improve storage efficiency through reusable image layers. |
| Multi-stage Build | Reduce image size and improve security. |

## Containers vs Virtual Machines

| Containers | Virtual Machines |
|------------|------------------|
| Share host OS kernel | Each VM has its own guest OS |
| Lightweight | Higher resource overhead |
| Faster startup | Slower startup |
| High density | Lower density |
| Ideal for microservices | Suitable for full operating system isolation |

## Best Practices

- Keep container images small.
- Use minimal base images.
- Build immutable images.
- Scan images for vulnerabilities.
- Run containers with least privilege.
- Store images in trusted registries.
- Version images consistently.

## Common Mistakes

- Building excessively large images.
- Running applications as the root user.
- Embedding secrets inside images.
- Using the `latest` tag in production.
- Ignoring vulnerability scanning.
- Treating containers as virtual machines.

## Interview Focus

Be prepared to explain containerization, container images, container runtimes, container registries, image layering, containers versus virtual machines, multi-stage builds, and why containers became the foundation of cloud-native application delivery.

## Related Topics

- Infrastructure as Code
- Container Orchestration
- Build & Release Management
- DevSecOps
- Cloud

## Next

Continue with **06-container-orchestration.md** to understand how large numbers of containers are deployed, managed, scaled, and operated in production environments.
