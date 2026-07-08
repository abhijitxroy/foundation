# Requirements Analysis

## Overview

Every successful system begins with a clear understanding of the problem it must solve. Poorly understood requirements often lead to unnecessary complexity, incorrect architectural decisions, scope changes, performance issues, and increased development cost. Requirements Analysis establishes the foundation for designing systems that satisfy both business objectives and technical constraints.

## Definition

Requirements Analysis is the engineering discipline of identifying, understanding, documenting, validating, and prioritizing functional and non-functional requirements before designing a software system.

It ensures architects and stakeholders share a common understanding of the problem before implementation begins.

## Objectives

- Understand business goals.
- Define system scope.
- Identify functional requirements.
- Capture non-functional requirements.
- Estimate system scale.
- Identify constraints and assumptions.

## Requirements Analysis Process

```text
Business Problem
       │
       ▼
Gather Requirements
       │
       ▼
Clarify Scope
       │
       ▼
Estimate Scale
       │
       ▼
Identify Constraints
       │
       ▼
Prioritize Requirements
       │
       ▼
Architecture Design
```

## Functional vs Non-Functional Requirements

| Functional Requirements | Non-Functional Requirements |
|--------------------------|-----------------------------|
| Features | Scalability |
| User workflows | Availability |
| APIs | Reliability |
| Authentication | Performance |
| Business rules | Security |
| Data operations | Maintainability |

## Capacity Estimation

Before designing the architecture, estimate:

- Expected users
- Requests per second (RPS)
- Peak traffic
- Data storage requirements
- Bandwidth
- Growth expectations
- Availability targets

## Constraints & Assumptions

Typical constraints include:

- Budget
- Timeline
- Existing technology stack
- Regulatory requirements
- Infrastructure limitations
- Team expertise

Clearly document assumptions so they can be validated as requirements evolve.

## Best Practices

- Ask clarifying questions early.
- Separate requirements from implementation.
- Prioritize business-critical functionality.
- Quantify non-functional requirements whenever possible.
- Validate assumptions with stakeholders.
- Review requirements before beginning design.

## Common Mistakes

- Designing before understanding requirements.
- Ignoring non-functional requirements.
- Assuming system scale.
- Mixing solutions with requirements.
- Poorly defined project scope.
- Missing stakeholder alignment.

## Interview Focus

Be prepared to explain:

- Functional vs Non-functional requirements
- Capacity estimation
- Requirement prioritization
- Constraints vs assumptions
- Why every system design interview begins with requirement gathering

## Related Topics

- System Design Foundations
- Scalability
- Data Management
- Distributed Systems
- Software Engineering

## Next

Continue with **03-scalability.md** to understand how systems are designed to efficiently support increasing users, traffic, and data over time.