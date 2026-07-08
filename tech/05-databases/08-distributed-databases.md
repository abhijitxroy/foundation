# Distributed Databases

## Overview

As applications grow beyond the capacity of a single database server, data must be distributed across multiple machines while maintaining performance, availability, and reliability. Distributed databases enable organizations to support global users, massive datasets, and continuous availability by combining multiple database nodes into a unified system.

Designing distributed databases requires balancing scalability, consistency, fault tolerance, operational complexity, and business requirements.

## Definition

A Distributed Database is a database whose data is stored across multiple physical servers while appearing as a single logical database to applications.

The distributed database management system coordinates data storage, synchronization, query execution, and recovery across participating nodes.

## Objectives

- Scale beyond a single server.
- Improve availability.
- Eliminate single points of failure.
- Support geographic distribution.
- Increase fault tolerance.
- Maintain acceptable data consistency.

## Distributed Database Architecture

```text
Applications
       │
       ▼
Database Router
       │
       ▼
 ┌───────────────┐
 │ Distributed DB│
 └───────────────┘
       │
 ┌─────┼─────┐
 ▼     ▼     ▼
Node1 Node2 Node3
       │
       ▼
Replication & Partitioning
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Replication | Maintain copies of data across multiple nodes for availability and read scalability. |
| Partitioning (Sharding) | Split data across multiple nodes to distribute workload. |
| Consistency Models | Define how synchronized replicated data remains. |
| Distributed Transactions | Coordinate changes across multiple database nodes. |
| Fault Tolerance | Continue operating despite node failures. |
| High Availability | Keep services accessible during failures or maintenance. |

## Replication vs Partitioning

| Replication | Partitioning (Sharding) |
|-------------|-------------------------|
| Copies the same data to multiple nodes. | Divides data across multiple nodes. |
| Improves availability and read performance. | Improves storage capacity and write scalability. |
| Increases storage requirements. | Requires routing requests to the correct partition. |

## Consistency Models

| Model | Characteristics |
|-------|-----------------|
| Strong Consistency | Every read returns the latest committed data. |
| Eventual Consistency | Data becomes consistent over time after updates propagate. |
| Tunable Consistency | Applications choose the required consistency level based on workload. |

## Best Practices

- Partition data using well-designed shard keys.
- Replicate critical data for fault tolerance.
- Understand consistency requirements before implementation.
- Design for node failures.
- Monitor replication health continuously.
- Test recovery procedures regularly.

## Common Mistakes

- Choosing poor partition keys.
- Assuming distributed databases scale automatically.
- Ignoring network latency.
- Using distributed transactions unnecessarily.
- Underestimating operational complexity.
- Neglecting replication monitoring.

## Interview Focus

Be prepared to explain:

- Distributed Databases
- Replication
- Partitioning (Sharding)
- Strong vs Eventual Consistency
- Distributed Transactions
- High Availability
- Trade-offs in distributed database design

## Related Topics

- Data Management
- Transactions & Concurrency
- System Design
- Distributed Systems
- Cloud

## Next

Continue with **09-database-operations.md** to understand how databases are deployed, monitored, secured, backed up, and maintained in production environments.
