# DevSecOps

## Overview

Traditional software development often treated security as a final checkpoint before deployment. This approach delays vulnerability detection, increases remediation costs, and exposes applications to unnecessary risks. DevSecOps integrates security into every stage of the software development lifecycle, enabling teams to identify, prevent, and remediate security issues continuously.

By automating security practices within development and operations workflows, organizations can deliver software faster while maintaining strong security and compliance.

## Definition

**DevSecOps** is the engineering discipline of integrating security into software development, testing, deployment, and operations through automation, collaboration, and continuous security practices.

Its objective is to build secure software continuously rather than treating security as a separate phase.

## Objectives

- Shift security earlier in development.
- Automate security testing.
- Secure CI/CD pipelines.
- Reduce software vulnerabilities.
- Improve compliance.
- Enable continuous security improvement.

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
Test
  │
  ▼
Deploy
  │
  ▼
Operate
  │
  ▼
Monitor
  │
  ▼
Improve
```

Security activities are integrated throughout every stage rather than performed only before release.

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Shift Left Security | Detect security issues early in development. |
| CI/CD Security | Integrate automated security checks into delivery pipelines. |
| Static Application Security Testing (SAST) | Analyze source code for vulnerabilities without execution. |
| Dynamic Application Security Testing (DAST) | Test running applications for security vulnerabilities. |
| Software Composition Analysis (SCA) | Identify vulnerabilities in third-party dependencies. |
| Infrastructure as Code (IaC) Security | Scan infrastructure definitions for security issues. |
| Container Security | Secure container images, runtimes, and registries. |
| Supply Chain Security | Protect software dependencies, build systems, and artifacts. |

## Security in the CI/CD Pipeline

```text
Source Code
      │
      ▼
Static Analysis (SAST)
      │
      ▼
Dependency Scan (SCA)
      │
      ▼
Build
      │
      ▼
Container / Artifact Scan
      │
      ▼
Deploy
      │
      ▼
Dynamic Testing (DAST)
      │
      ▼
Production Monitoring
```

## Common Security Activities

| Activity | Purpose |
|----------|---------|
| Code Review | Identify security issues before merging code. |
| Secret Scanning | Detect exposed passwords, API keys, and tokens. |
| Dependency Scanning | Identify vulnerable libraries. |
| Container Image Scanning | Detect vulnerabilities in container images. |
| Infrastructure Scanning | Validate Infrastructure as Code security. |
| Runtime Monitoring | Detect threats in production environments. |

## Best Practices

- Integrate security into every CI/CD pipeline.
- Automate repetitive security checks.
- Scan dependencies regularly.
- Protect secrets using dedicated secret management solutions.
- Apply the principle of least privilege.
- Continuously monitor production environments.

## Common Mistakes

- Treating security as a final deployment step.
- Ignoring third-party dependency vulnerabilities.
- Storing secrets in source code repositories.
- Disabling security checks to accelerate releases.
- Failing to update vulnerable dependencies.
- Neglecting runtime security monitoring.

## Interview Focus

Be prepared to explain:

- DevSecOps
- Shift Left Security
- SAST
- DAST
- Software Composition Analysis (SCA)
- Infrastructure as Code (IaC) Security
- Container Security
- Supply Chain Security

## Related Topics

- Application Security
- Cloud Security
- DevOps
- Threat Modeling
- Enterprise Security Engineering

## Next

Continue with **08-threat-modeling.md** to understand how engineers identify threats, analyze attack surfaces, assess risks, and design security controls before vulnerabilities are introduced into software systems.
