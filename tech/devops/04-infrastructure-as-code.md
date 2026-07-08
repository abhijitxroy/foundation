# Infrastructure as Code (IaC)

## Overview

Modern infrastructure must be provisioned, configured, and managed with the same discipline as application code. Infrastructure as Code (IaC) enables engineering teams to automate infrastructure management, improve consistency, reduce manual errors, and support reliable, repeatable deployments across environments.

## Definition

Infrastructure as Code (IaC) is the engineering practice of defining, provisioning, configuring, and managing infrastructure using machine-readable code that can be version-controlled, reviewed, tested, and automated.

Rather than manually configuring servers and cloud resources, infrastructure is treated as software.

## Objectives

- Automate infrastructure provisioning.
- Eliminate configuration drift.
- Improve consistency across environments.
- Enable reproducible deployments.
- Support scalable infrastructure management.
- Integrate infrastructure into CI/CD pipelines.

## Infrastructure Lifecycle

```text
Define Infrastructure
        │
        ▼
Version Control
        │
        ▼
Validate
        │
        ▼
Provision
        │
        ▼
Configure
        │
        ▼
Deploy Applications
        │
        ▼
Monitor & Maintain
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Infrastructure Definition | Describe infrastructure in code. |
| Declarative Model | Define the desired end state. |
| Imperative Model | Define step-by-step execution. |
| Configuration Management | Maintain consistent system configuration. |
| Provisioning | Create infrastructure resources automatically. |
| Immutable Infrastructure | Replace infrastructure instead of modifying it. |
| Version Control | Track infrastructure changes like application code. |

## Best Practices

- Keep infrastructure definitions in version control.
- Prefer declarative approaches where appropriate.
- Review infrastructure changes through pull requests.
- Automate validation before deployment.
- Build immutable infrastructure when practical.
- Separate reusable modules from environment-specific configuration.

## Common Mistakes

- Manual infrastructure changes outside automation.
- Environment-specific configurations embedded in shared code.
- Infrastructure drift.
- Skipping review of infrastructure changes.
- Treating infrastructure as a one-time activity.

## Interview Focus

Be prepared to explain Infrastructure as Code, declarative vs. imperative approaches, immutable infrastructure, configuration management, infrastructure drift, and how IaC integrates with CI/CD and cloud platforms.

## Related Topics

- Build & Release Management
- Containerization
- Platform Engineering
- Cloud
- Git

## Next

Continue with **05-containerization.md** to understand how containers package applications and their dependencies into portable, reproducible runtime environments.
