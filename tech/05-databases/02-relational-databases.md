# Relational Databases

## Overview

Relational databases have been the foundation of enterprise software for decades. They organize data into structured tables with well-defined relationships, ensuring consistency, integrity, and reliable transaction processing.

Most business-critical systems—including banking, e-commerce, healthcare, ERP, and CRM platforms—depend on relational databases because they provide predictable behavior, strong data integrity, and powerful querying capabilities.

## Definition

A Relational Database is a database that stores data in tables consisting of rows and columns while representing relationships between data using keys and constraints.

The Relational Model organizes information logically, minimizes redundancy, and ensures data integrity through well-defined rules.

## Objectives

- Organize structured data efficiently.
- Maintain data integrity.
- Reduce data redundancy.
- Model relationships clearly.
- Support reliable transactions.
- Enable efficient querying.

## Relational Database Model

```text
Entity
   │
   ▼
Table
   │
   ├── Rows (Records)
   └── Columns (Attributes)
           │
           ▼
Relationships
           │
           ▼
Queries
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Table | Stores related information. |
| Row (Record) | Represents a single entity. |
| Column (Attribute) | Defines a property of an entity. |
| Primary Key | Uniquely identifies each row. |
| Foreign Key | Creates relationships between tables. |
| Relationship | Connects related entities. |
| Constraint | Enforces data integrity. |

## Types of Relationships

| Relationship | Description |
|-------------|-------------|
| One-to-One | One record relates to one record. |
| One-to-Many | One record relates to multiple records. |
| Many-to-Many | Multiple records relate to multiple records through a junction table. |

## Relational Model Principles

- Store data in tables.
- Assign a primary key to every table.
- Use foreign keys to establish relationships.
- Minimize redundant data.
- Maintain referential integrity.
- Normalize data appropriately.

## Best Practices

- Design tables around business entities.
- Use meaningful primary keys.
- Define relationships explicitly.
- Enforce integrity using constraints.
- Normalize before optimizing.
- Document schema changes.

## Common Mistakes

- Duplicating data unnecessarily.
- Missing primary keys.
- Ignoring foreign key relationships.
- Over-normalizing without considering performance.
- Under-normalizing and creating inconsistent data.
- Using relational databases for unsuitable workloads.

## Interview Focus

Be prepared to explain:

- Relational Model
- Tables, Rows, and Columns
- Primary Keys
- Foreign Keys
- One-to-One vs One-to-Many vs Many-to-Many
- Referential Integrity
- Normalization

## Related Topics

- Database Foundations
- SQL Fundamentals
- Database Design
- Transactions & Concurrency
- Distributed Databases

## Next

Continue with **03-sql-fundamentals.md** to learn how structured query language (SQL) is used to define, retrieve, manipulate, and manage relational data.
