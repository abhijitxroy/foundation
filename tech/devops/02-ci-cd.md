# Continuous Integration & Continuous Delivery (CI/CD)

## Overview

CI/CD enables engineering teams to build, validate, test, and deliver software rapidly and reliably. By automating repetitive delivery activities, CI/CD reduces manual errors, shortens feedback cycles, and increases confidence in every software change.

## Definition

Continuous Integration (CI) is the practice of frequently integrating code changes into a shared repository where automated validation is performed.

Continuous Delivery (CD) ensures that validated software is always in a deployable state.

Continuous Deployment extends Continuous Delivery by automatically deploying every validated change to production.

## Objectives

- Detect integration issues early.
- Automate build and testing.
- Deliver software faster.
- Improve release reliability.
- Reduce deployment risk.
- Shorten feedback cycles.

## CI/CD Pipeline

```text
Code Commit
     │
     ▼
Build
     │
     ▼
Static Analysis
     │
     ▼
Unit Tests
     │
     ▼
Package Artifact
     │
     ▼
Security Scans
     │
     ▼
Deploy to Test
     │
     ▼
Integration Tests
     │
     ▼
Approval (Continuous Delivery)
     │
     ▼
Production Deployment
```

## CI vs Continuous Delivery vs Continuous Deployment

| Practice | Purpose |
|----------|---------|
| Continuous Integration | Automatically build and validate every code change. |
| Continuous Delivery | Keep software production-ready with controlled releases. |
| Continuous Deployment | Automatically release validated changes to production. |

## Pipeline Stages

| Stage | Goal |
|-------|------|
| Build | Compile and package software. |
| Quality | Run linting and static analysis. |
| Testing | Validate functionality automatically. |
| Security | Scan code, dependencies, containers, and artifacts. |
| Packaging | Produce versioned artifacts. |
| Deployment | Promote software through environments. |
| Verification | Validate deployment success and system health. |

## Best Practices

- Keep pipelines fast and reliable.
- Fail early on quality or security issues.
- Automate testing wherever practical.
- Version build artifacts consistently.
- Treat pipeline definitions as code.
- Monitor pipeline performance and reliability.

## Common Mistakes

- Long-running pipelines.
- Manual deployment steps.
- Weak test coverage.
- Ignoring failed quality gates.
- Environment inconsistencies.
- Treating CI/CD as only a build system.

## Interview Focus

Be prepared to explain the differences between CI, Continuous Delivery, and Continuous Deployment, describe a production-grade pipeline, discuss quality gates, artifact promotion, deployment approvals, and how CI/CD improves engineering productivity and software quality.

## Related Topics

- DevOps Foundations
- Build & Release Management
- DevSecOps
- Platform Engineering
- Git

## Next

Continue with **03-build-release-management.md** to understand how software artifacts are built, versioned, stored, promoted, and released across environments.