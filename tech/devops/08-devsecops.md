# DevSecOps

## Overview

Security can no longer be treated as a final checkpoint before software is released. Modern engineering teams integrate security throughout the software development lifecycle, enabling rapid delivery without compromising security, compliance, or software integrity.

DevSecOps extends DevOps by embedding security into every stage of software delivery through automation, continuous validation, and shared engineering responsibility.

## Definition

DevSecOps is the engineering practice of integrating security into software development, infrastructure, CI/CD pipelines, and operations through automation, continuous verification, and collaborative ownership.

Security becomes an integral part of software delivery rather than a separate phase.

## Objectives

- Build secure software by default.
- Detect vulnerabilities early.
- Automate security validation.
- Protect the software supply chain.
- Reduce security risk.
- Maintain regulatory compliance.

## DevSecOps Lifecycle

```text
Plan
   │
   ▼
Develop
   │
   ▼
Build
   │
   ▼
Static Security Analysis
   │
   ▼
Dependency & SBOM Scan
   │
   ▼
Container & Artifact Scan
   │
   ▼
Deploy
   │
   ▼
Runtime Security
   │
   ▼
Continuous Monitoring
```

## Core Security Practices

| Practice | Purpose |
|----------|---------|
| Shift Left Security | Detect issues early during development. |
| Secure Coding | Reduce vulnerabilities during implementation. |
| Static Application Security Testing (SAST) | Analyze source code for security flaws. |
| Software Composition Analysis (SCA) | Detect vulnerable dependencies. |
| Container Security | Scan container images before deployment. |
| SBOM | Inventory software components for traceability. |
| Secrets Management | Protect credentials and sensitive information. |
| Policy as Code | Automate security and compliance policies. |

## Security Throughout the Pipeline

| Pipeline Stage | Security Activities |
|---------------|---------------------|
| Source Code | Secure coding standards, secret detection |
| Build | SAST, dependency analysis |
| Package | SBOM generation, artifact signing |
| Container | Image scanning and hardening |
| Deployment | Policy validation and access control |
| Runtime | Monitoring, threat detection, compliance |

## Best Practices

- Automate security checks.
- Shift security left.
- Scan dependencies continuously.
- Generate SBOMs for every release.
- Sign and verify artifacts.
- Protect secrets using dedicated secret management.
- Continuously monitor production environments.

## Common Mistakes

- Treating security as a final release step.
- Ignoring third-party dependencies.
- Storing secrets in source control.
- Skipping container security scanning.
- Ignoring software supply chain risks.
- Bypassing security gates to accelerate delivery.

## Interview Focus

Be prepared to explain Shift Left Security, SAST, SCA, SBOM, software supply chain security, secret management, Policy as Code, and how DevSecOps integrates security throughout the CI/CD pipeline.

## Related Topics

- CI/CD
- Build & Release Management
- Infrastructure as Code
- Enterprise DevOps
- Security

## Next

Continue with **09-platform-engineering.md** to understand how internal developer platforms improve engineering productivity through self-service infrastructure, automation, and standardized engineering workflows.
