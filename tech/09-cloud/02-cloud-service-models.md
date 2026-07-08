# Cloud Service Models

## Overview

Not every organization wants the same level of control over its infrastructure. Some teams need complete control over virtual machines, while others prefer fully managed platforms that allow them to focus entirely on application development. Cloud Service Models define how responsibilities are divided between cloud providers and customers, enabling organizations to choose the right balance of flexibility, operational effort, and cost.

Understanding these service models helps engineers design efficient cloud architectures and select appropriate services for different workloads.

## Definition

Cloud Service Models describe the level of infrastructure, platform, and application management provided by a cloud provider versus the responsibilities retained by the customer.

They provide standardized approaches for consuming cloud resources while balancing control, operational complexity, and productivity.

## Objectives

- Understand major cloud service models.
- Learn responsibility boundaries.
- Compare operational trade-offs.
- Select appropriate services.
- Reduce operational overhead.
- Build scalable cloud solutions.

## Service Model Evolution

```text
On-Premises
      │
      ▼
Infrastructure as a Service (IaaS)
      │
      ▼
Platform as a Service (PaaS)
      │
      ▼
Function as a Service (FaaS)
      │
      ▼
Software as a Service (SaaS)
```

## Core Service Models

| Model | Purpose |
|--------|---------|
| Infrastructure as a Service (IaaS) | Provide virtualized infrastructure such as compute, storage, and networking. |
| Platform as a Service (PaaS) | Provide managed application platforms for development and deployment. |
| Software as a Service (SaaS) | Deliver complete software applications over the Internet. |
| Function as a Service (FaaS) | Execute event-driven functions without managing servers. |
| Managed Services | Cloud provider manages specific infrastructure or platform components. |

## Responsibility Comparison

| Component | On-Premises | IaaS | PaaS | SaaS |
|-----------|-------------|------|------|------|
| Applications | Customer | Customer | Customer | Provider |
| Application Data | Customer | Customer | Customer | Provider* |
| Runtime | Customer | Customer | Provider | Provider |
| Middleware | Customer | Customer | Provider | Provider |
| Operating System | Customer | Customer | Provider | Provider |
| Virtualization | Customer | Provider | Provider | Provider |
| Infrastructure | Customer | Provider | Provider | Provider |

> *Although SaaS providers operate the service, customers generally remain responsible for the governance, ownership, and appropriate use of their data.

## Choosing a Service Model

| Requirement | Recommended Model |
|-------------|-------------------|
| Maximum infrastructure control | IaaS |
| Rapid application development | PaaS |
| Event-driven workloads | FaaS |
| Business productivity applications | SaaS |
| Reduce operational management | Managed Services |

## Benefits

- Faster deployment.
- Reduced operational complexity.
- Improved scalability.
- Better resource utilization.
- Flexible responsibility models.
- Increased engineering productivity.

## Best Practices

- Select the simplest model that satisfies requirements.
- Understand shared responsibilities.
- Automate deployments whenever possible.
- Secure applications regardless of service model.
- Evaluate operational cost and complexity.
- Review service selection as workloads evolve.

## Common Mistakes

- Choosing IaaS when a managed platform is sufficient.
- Assuming SaaS eliminates all security responsibilities.
- Ignoring vendor-specific limitations.
- Overengineering simple workloads.
- Confusing FaaS with PaaS.
- Selecting services based only on familiarity.

## Interview Focus

Be prepared to explain:

- IaaS
- PaaS
- SaaS
- FaaS
- Managed Services
- Shared Responsibility
- Choosing the appropriate service model

## Related Topics

- Cloud Foundations
- Cloud Deployment Models
- Cloud Compute
- Cloud Operations
- DevOps

## Next

Continue with **03-cloud-deployment-models.md** to understand Public Cloud, Private Cloud, Hybrid Cloud, Multi-Cloud, and how organizations choose deployment strategies based on business, regulatory, and technical requirements.