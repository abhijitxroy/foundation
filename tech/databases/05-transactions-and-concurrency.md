# Transactions & Concurrency

## Overview

Modern database systems serve thousands or even millions of users simultaneously. Multiple users may read, modify, or delete the same data at the same time. Transactions and concurrency control ensure that data remains accurate, consistent, and reliable even under heavy workloads or unexpected failures.

Without proper transaction management, databases can suffer from lost updates, inconsistent reads, corrupted data, and system instability.

## Definition

A **Transaction** is a sequence of one or more database operations that is treated as a single logical unit of work.

**Concurrency Control** is the set of mechanisms that coordinate simultaneous transactions to preserve data consistency while maximizing system performance.

## Objectives

- Maintain data consistency.
- Protect data integrity.
- Support concurrent users.
- Prevent data corruption.
- Recover safely from failures.
- Balance correctness with performance.

## Transaction Lifecycle

```text
Begin Transaction
        │
        ▼
Read Data
        │
        ▼
Modify Data
        │
        ▼
Validate
        │
        ▼
Commit
        │
        └─────────────┐
                      │
                  Failure
                      │
                      ▼
                  Rollback
```

## ACID Properties

| Property | Purpose |
|----------|---------|
| Atomicity | Complete all operations or none at all. |
| Consistency | Maintain valid database state before and after transactions. |
| Isolation | Prevent concurrent transactions from interfering incorrectly. |
| Durability | Preserve committed data even after failures. |

## Concurrency Concepts

| Concept | Purpose |
|---------|---------|
| Transaction | Logical unit of work. |
| Locking | Prevent conflicting access to shared data. |
| Isolation Level | Define how concurrent transactions interact. |
| Deadlock | Two or more transactions waiting indefinitely for each other. |
| Optimistic Concurrency | Assume conflicts are rare and validate before committing. |
| Pessimistic Concurrency | Prevent conflicts through locking before modifications. |

## Isolation Levels

| Level | Characteristics |
|-------|-----------------|
| Read Uncommitted | Highest concurrency, lowest consistency. |
| Read Committed | Prevents dirty reads. |
| Repeatable Read | Prevents non-repeatable reads. |
| Serializable | Highest consistency with lowest concurrency. |

## Best Practices

- Keep transactions short.
- Lock only necessary resources.
- Choose appropriate isolation levels.
- Handle transaction failures gracefully.
- Monitor deadlocks.
- Balance consistency and performance.

## Common Mistakes

- Long-running transactions.
- Excessive locking.
- Ignoring deadlocks.
- Using the highest isolation level unnecessarily.
- Assuming concurrent access never occurs.
- Not handling transaction retries.

## Interview Focus

Be prepared to explain:

- Transactions
- ACID properties
- Concurrency Control
- Locking
- Isolation Levels
- Deadlocks
- Optimistic vs Pessimistic Concurrency

## Related Topics

- SQL Fundamentals
- Database Design
- Performance & Optimization
- Distributed Databases
- System Design

## Next

Continue with **06-database-design.md** to understand how databases are modeled, normalized, indexed, and structured for maintainability, performance, and long-term scalability.
