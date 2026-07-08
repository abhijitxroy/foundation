# Threat Modeling

## Overview

Building secure software is far more effective than fixing security vulnerabilities after deployment. Threat Modeling helps engineering teams identify potential threats during system design, evaluate security risks, and implement appropriate mitigations before software reaches production.

Rather than reacting to attacks, Threat Modeling enables proactive security by systematically analyzing how a system could be compromised and how those risks can be reduced.

## Definition

**Threat Modeling** is the engineering discipline of identifying, analyzing, prioritizing, and mitigating potential security threats during the design and development of systems.

Its objective is to reduce security risk by understanding how attackers might exploit vulnerabilities before those vulnerabilities are introduced into production systems.

## Objectives

- Identify valuable assets.
- Understand potential attackers.
- Analyze attack surfaces.
- Assess security risks.
- Design effective mitigations.
- Build secure systems by design.

## Threat Modeling Process

```text
Define System
      │
      ▼
Identify Assets
      │
      ▼
Identify Threats
      │
      ▼
Analyze Vulnerabilities
      │
      ▼
Assess Risk
      │
      ▼
Design Mitigations
      │
      ▼
Review & Improve
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Asset | Anything valuable that requires protection. |
| Threat | A potential event that can cause harm. |
| Vulnerability | A weakness that can be exploited. |
| Attack Surface | All possible entry points into a system. |
| Risk | The likelihood and impact of a successful attack. |
| Mitigation | A control that reduces identified risks. |

## STRIDE Framework

One of the most widely used threat modeling frameworks is **STRIDE**.

| Threat | Description |
|---------|-------------|
| Spoofing | Pretending to be another user or system. |
| Tampering | Unauthorized modification of data. |
| Repudiation | Denying performed actions without sufficient evidence. |
| Information Disclosure | Unauthorized exposure of sensitive information. |
| Denial of Service (DoS) | Making systems unavailable to legitimate users. |
| Elevation of Privilege | Gaining permissions beyond those intended. |

## Attack Surface Analysis

Typical attack surfaces include:

- Web applications
- APIs
- Authentication systems
- Databases
- Cloud services
- Containers
- Networks
- Third-party integrations

Reducing unnecessary attack surfaces lowers overall security risk.

## Risk Assessment

Risk is commonly evaluated using:

```text
Risk
   │
   ├── Likelihood
   └── Impact
```

Higher likelihood combined with higher impact generally indicates higher-priority risks.

## Common Mitigation Strategies

- Strong authentication
- Least-privilege authorization
- Input validation
- Encryption
- Network segmentation
- Security monitoring
- Regular patching
- Secure configuration

## Best Practices

- Perform threat modeling early in system design.
- Update threat models as architectures evolve.
- Involve developers, architects, and security engineers.
- Document identified risks and mitigations.
- Focus on high-impact threats first.
- Review threat models regularly.

## Common Mistakes

- Performing threat modeling only after implementation.
- Ignoring business context.
- Focusing only on technical vulnerabilities.
- Never updating threat models.
- Trying to eliminate every possible risk.
- Treating threat modeling as a one-time exercise.

## Interview Focus

Be prepared to explain:

- Threat Modeling
- STRIDE
- Attack Surface
- Asset
- Threat
- Vulnerability
- Risk Assessment
- Security Mitigation

## Related Topics

- Security Foundations
- Application Security
- DevSecOps
- Cloud Security
- Incident Response

## Next

Continue with **09-incident-response-and-compliance.md** to understand how organizations detect, investigate, contain, recover from, and learn from security incidents while meeting regulatory and compliance requirements.
