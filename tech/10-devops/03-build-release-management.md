# Build & Release Management

## Overview

Building software is more than compiling source code. Enterprise engineering requires reproducible builds, reliable artifact management, controlled releases, and traceable software delivery. Effective build and release management ensures that every released artifact is secure, versioned, auditable, and deployable across environments.

## Definition

Build Management is the process of compiling, validating, packaging, and producing deployable software artifacts.

Release Management is the engineering practice of promoting validated artifacts through environments and delivering production-ready software in a controlled, repeatable, and traceable manner.

## Objectives

- Produce reproducible builds.
- Manage software artifacts consistently.
- Enable reliable software releases.
- Improve traceability across the delivery pipeline.
- Reduce deployment risk.
- Strengthen software supply chain integrity.

## Build & Release Workflow

```text
Source Code
      │
      ▼
Build
      │
      ▼
Quality & Security Validation
      │
      ▼
Package Artifact
      │
      ▼
Artifact Repository
      │
      ▼
Release Validation
      │
      ▼
Version & Tag
      │
      ▼
Deploy Across Environments
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Build System | Compile and package software. |
| Artifact | Immutable output produced by the build. |
| Artifact Repository | Store and distribute versioned build artifacts. |
| Dependency Management | Control external libraries and versions. |
| Release Engineering | Coordinate software delivery across environments. |
| Semantic Versioning | Communicate compatibility and release scope. |
| Changelog | Record user-facing changes between releases. |
| Software Supply Chain | Secure the path from source code to production. |

## Best Practices

- Build once and promote the same artifact.
- Produce deterministic, reproducible builds.
- Version every release consistently.
- Store artifacts in a centralized repository.
- Automate release validation and promotion.
- Generate release notes and changelogs automatically where possible.

## Common Mistakes

- Rebuilding artifacts for each environment.
- Manual release processes.
- Inconsistent versioning.
- Missing artifact traceability.
- Weak dependency management.
- Ignoring software supply chain security.

## Interview Focus

Be prepared to explain build pipelines, artifact repositories, release engineering, dependency management, semantic versioning, artifact promotion, and the importance of software supply chain security in enterprise DevOps.

## Related Topics

- CI/CD
- Infrastructure as Code
- DevSecOps
- Enterprise DevOps
- Git → Release & Version Management

## Next

Continue with **04-infrastructure-as-code.md** to learn how infrastructure can be provisioned, managed, and version-controlled using software engineering principles.