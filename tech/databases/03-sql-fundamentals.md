# SQL Fundamentals

## Overview

Structured Query Language (SQL) is the standard language for interacting with relational databases. It enables engineers to define database structures, retrieve information, modify data, enforce integrity, and manage access.

Although database technologies continue to evolve, SQL remains one of the most important skills for software engineers because it provides a consistent way to work with structured data across multiple database systems.

## Definition

Structured Query Language (SQL) is a declarative language used to define, manipulate, retrieve, and control data stored in relational databases.

SQL specifies *what* result is required rather than *how* the database should retrieve it.

## Objectives

- Define database structures.
- Retrieve information efficiently.
- Modify stored data safely.
- Maintain data integrity.
- Control database access.
- Support reliable applications.

## SQL Workflow

```text
Business Requirement
        │
        ▼
Write SQL Query
        │
        ▼
Query Parser
        │
        ▼
Query Optimizer
        │
        ▼
Execution Engine
        │
        ▼
Database Storage
        │
        ▼
Query Result
```

## SQL Categories

| Category | Purpose |
|----------|---------|
| Data Definition Language (DDL) | Define and modify database structures. |
| Data Manipulation Language (DML) | Insert, update, delete, and retrieve data. |
| Data Query Language (DQL) | Retrieve information from the database. |
| Data Control Language (DCL) | Manage permissions and access control. |
| Transaction Control Language (TCL) | Control transactions and data consistency. |

## Common SQL Operations

| Operation | Purpose |
|-----------|---------|
| Create | Define database objects. |
| Read | Retrieve stored information. |
| Update | Modify existing records. |
| Delete | Remove stored records. |
| Filter | Return only matching data. |
| Sort | Order query results. |
| Aggregate | Summarize data using calculations. |
| Join | Combine related information from multiple tables. |

## SQL Characteristics

- Declarative language.
- Standardized across relational databases.
- Supports complex queries.
- Enables transaction management.
- Enforces data integrity.
- Optimized by the database engine.

## Best Practices

- Write clear and readable queries.
- Retrieve only required columns.
- Filter data as early as possible.
- Use joins appropriately.
- Avoid unnecessary complexity.
- Validate queries before running them on production systems.

## Common Mistakes

- Retrieving unnecessary data.
- Ignoring query performance.
- Writing ambiguous joins.
- Using database-specific features without justification.
- Forgetting transaction boundaries.
- Modifying production data without verification.

## Interview Focus

Be prepared to explain:

- What SQL is
- SQL categories (DDL, DML, DQL, DCL, TCL)
- CRUD operations
- Joins
- Filtering and sorting
- Aggregate operations
- Why SQL is declarative

## Related Topics

- Relational Databases
- Transactions & Concurrency
- Database Design
- Performance & Optimization
- Database Operations

## Next

Continue with **04-nosql-databases.md** to understand non-relational database models, flexible schemas, and distributed data storage for modern applications.
