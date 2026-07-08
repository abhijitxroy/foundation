# Security Foundations

## Overview

Every modern software system is exposed to security risks. Applications process sensitive data, communicate across networks, and operate on shared infrastructure, making them potential targets for cyber threats. Security is therefore not a feature added after development—it is a fundamental engineering discipline that must be considered throughout the software lifecycle.

Understanding security foundations enables engineers to build systems that protect users, data, infrastructure, and business operations while maintaining trust, compliance, and operational resilience.

## Definition

**Information Security** is the engineering discipline of protecting information systems, data, infrastructure, and digital services from unauthorized access, disclosure, modification, disruption, or destruction.

Its objective is to manage risk while ensuring that systems remain secure, reliable, and available.

## Objectives

- Understand security principles.
- Protect information assets.
- Manage security risks.
- Reduce attack surfaces.
- Build secure systems by design.
- Establish the foundation for advanced security topics.

## Security Model

```text
Users
   │
   ▼
Applications
   │
   ▼
Security Controls
   │
   ├── Authentication
   ├── Authorization
   ├── Encryption
   ├── Monitoring
   └── Auditing
          │
          ▼
Systems & Data
```

## CIA Triad

| Principle | Purpose |
|-----------|---------|
| Confidentiality | Ensure information is accessible only to authorized users. |
| Integrity | Protect information from unauthorized modification or destruction. |
| Availability | Ensure systems and data remain accessible when needed. |

The CIA Triad forms the foundation of information security and guides the design of secure systems.

## Core Security Principles

| Principle | Purpose |
|-----------|---------|
| Least Privilege | Grant only the permissions necessary to perform a task. |
| Defense in Depth | Apply multiple layers of security controls. |
| Zero Trust | Verify every user, device, and request regardless of location. |
| Separation of Duties | Distribute responsibilities to reduce risk. |
| Fail Securely | Default to a secure state during failures. |
| Security by Design | Incorporate security throughout system development. |

## Risk Management

Security aims to reduce—not eliminate—risk.

A typical risk management process includes:

```text
Identify Assets
       │
       ▼
Identify Threats
       │
       ▼
Identify Vulnerabilities
       │
       ▼
Assess Risk
       │
       ▼
Apply Controls
       │
       ▼
Monitor & Improve
```

## Threats vs Vulnerabilities vs Risks

| Concept | Description |
|---------|-------------|
| Asset | Anything valuable that requires protection. |
| Threat | A potential cause of harm. |
| Vulnerability | A weakness that can be exploited. |
| Risk | The likelihood and impact of a threat exploiting a vulnerability. |
| Control | A safeguard that reduces risk. |

## Best Practices

- Design security into systems from the beginning.
- Apply the principle of least privilege.
- Encrypt sensitive information.
- Keep systems updated.
- Monitor security events continuously.
- Regularly review security controls.

## Common Mistakes

- Treating security as an afterthought.
- Granting excessive permissions.
- Ignoring security updates.
- Assuming internal systems are trusted.
- Focusing only on prevention instead of detection and response.
- Neglecting security monitoring.

## Interview Focus

Be prepared to explain:

- Information Security
- CIA Triad
- Defense in Depth
- Least Privilege
- Zero Trust
- Security by Design
- Risk Management
- Threat vs Vulnerability vs Risk

## Related Topics

- Operating System Security
- Network Security
- Cloud Security
- DevSecOps
- Threat Modeling

## Next

Continue with **02-cryptography.md** to understand how encryption, hashing, digital signatures, certificates, and key management protect data and establish trust in modern computing systems.