# Cloud Storage

## Overview

Applications continuously generate, process, and store data. Whether managing user files, databases, backups, logs, media, or AI datasets, cloud storage provides scalable, durable, and highly available storage services without requiring organizations to manage physical storage infrastructure.

Modern cloud platforms offer different storage models optimized for different workloads. Understanding these models enables engineers to design reliable, cost-effective, and high-performance cloud architectures.

## Definition

**Cloud Storage** is the cloud service that provides on-demand, scalable, durable, and managed storage for applications and data.

Cloud storage abstracts physical storage infrastructure while offering different storage models tailored to application requirements.

## Objectives

- Understand cloud storage models.
- Compare object, block, and file storage.
- Learn durability and availability concepts.
- Understand backup and recovery.
- Optimize storage cost.
- Design scalable storage architectures.

## Cloud Storage Architecture

```text
Applications
      │
      ▼
Cloud Storage
      │
      ├── Object Storage
      ├── Block Storage
      ├── File Storage
      ├── Backup
      └── Archive
             │
             ▼
Distributed Storage Infrastructure
```

## Storage Models

| Storage Model | Purpose |
|--------------|---------|
| Object Storage | Store unstructured data such as images, videos, backups, and logs. |
| Block Storage | Provide high-performance storage volumes for operating systems and databases. |
| File Storage | Provide shared hierarchical file systems for multiple clients. |

## Object vs Block vs File Storage

| Object Storage | Block Storage | File Storage |
|---------------|---------------|--------------|
| Stores data as objects with metadata | Stores raw storage blocks | Stores hierarchical files and directories |
| Highly scalable | High performance | Shared file access |
| Ideal for static and unstructured data | Ideal for databases and operating systems | Ideal for shared application data |
| Accessed through APIs | Attached as storage volumes | Accessed using file system protocols |

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Durability | Ensure stored data is not lost. |
| Availability | Ensure storage remains accessible. |
| Replication | Maintain multiple copies of data. |
| Backup | Create recoverable copies of data. |
| Disaster Recovery | Restore data after failures. |
| Lifecycle Management | Automatically transition or remove data based on policies. |
| Versioning | Preserve previous versions of stored objects or files. |

## Storage Classes

Different storage classes balance performance and cost.

Examples include:

- Frequently accessed storage
- Infrequent access storage
- Archive storage

Applications should choose storage classes based on access patterns rather than maximum performance alone.

## Best Practices

- Select storage models based on workload requirements.
- Enable backups and versioning where appropriate.
- Use lifecycle policies to optimize costs.
- Encrypt sensitive data.
- Replicate critical data.
- Monitor storage growth continuously.

## Common Mistakes

- Using block storage for static media files.
- Storing databases on inappropriate storage types.
- Ignoring backup validation.
- Never archiving inactive data.
- Assuming replication replaces backups.
- Overlooking storage costs.

## Interview Focus

Be prepared to explain:

- Object vs Block vs File Storage
- Durability vs Availability
- Replication
- Backup vs Disaster Recovery
- Storage Lifecycle Management
- Storage Classes
- Choosing the right storage model

## Related Topics

- Cloud Compute
- Databases
- File Systems
- Cloud Operations
- Disaster Recovery

## Next

Continue with **06-cloud-networking.md** to understand how virtual networks, routing, gateways, DNS, load balancing, and secure connectivity enable communication between cloud resources and external systems.