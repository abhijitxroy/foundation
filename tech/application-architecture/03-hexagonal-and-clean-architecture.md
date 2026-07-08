# Hexagonal and Clean Architecture

## Overview

Hexagonal Architecture and Clean Architecture are software architecture approaches that focus on separation of concerns, maintainability, testability, and independence from external systems.

## Hexagonal Architecture

Hexagonal Architecture, also known as Ports and Adapters, separates the application core from external dependencies.

The application communicates through:

- Ports: Interfaces that define communication contracts
- Adapters: Implementations that connect external systems

## Hexagonal Architecture Structure

```
External Systems
       ↓
Adapters
       ↓
Ports
       ↓
Application Core
       ↓
Domain Logic
```

Examples of adapters:

- REST API controllers
- Database implementations
- Message queue clients
- External service integrations

## Clean Architecture

Clean Architecture organizes software into concentric layers where dependencies point toward the core business logic.

Typical layers:

### Enterprise Business Rules

Contains core domain concepts and business rules.

### Application Business Rules

Contains application-specific workflows and use cases.

### Interface Adapters

Converts data between external systems and internal application models.

### Frameworks and Drivers

Contains external technologies such as:

- Databases
- Web frameworks
- External services

## Dependency Rule

The most important principle:

> Dependencies should point inward toward business logic.

The core application should not depend on frameworks, databases, or external systems.

## Benefits

- High testability
- Reduced coupling
- Easier technology changes
- Better maintainability
- Clear separation of responsibilities

## Challenges

- Requires more initial design effort
- Can introduce additional abstractions
- May feel complex for small applications

## Quick Summary

- Hexagonal Architecture uses ports and adapters to isolate the application core.
- Clean Architecture separates business logic from external concerns.
- Both approaches improve flexibility and maintainability.
- Dependency direction is the key design principle.

## Next

Continue with **04-microservices-architecture.md** to learn how applications are decomposed into independently deployable services.