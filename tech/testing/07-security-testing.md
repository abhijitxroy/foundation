# Security Testing

## Overview

Security vulnerabilities can compromise software, expose sensitive data, disrupt business operations, and damage user trust. Security Testing identifies weaknesses before software reaches production, reducing security risk while supporting compliance and secure software delivery.

Security is not a single testing phase—it is a continuous engineering practice integrated throughout the software development lifecycle.

## Definition

Security Testing is the engineering discipline of evaluating software to identify vulnerabilities, verify security controls, and validate that systems protect confidentiality, integrity, and availability against potential threats.

## Objectives

- Identify security vulnerabilities.
- Verify security controls.
- Reduce security risk.
- Protect sensitive information.
- Support regulatory compliance.
- Strengthen software resilience.

## Security Testing Lifecycle

```text
Requirements
      │
      ▼
Threat Modeling
      │
      ▼
Secure Design Review
      │
      ▼
Security Testing
      │
      ▼
Vulnerability Analysis
      │
      ▼
Remediation
      │
      ▼
Verification
      │
      ▼
Continuous Security
```

## Security Testing Types

| Test Type | Purpose |
|-----------|---------|
| Vulnerability Assessment | Identify known security weaknesses. |
| Penetration Testing | Simulate real-world attacks. |
| Static Security Testing (SAST) | Analyze source code for vulnerabilities. |
| Dynamic Security Testing (DAST) | Test running applications. |
| Interactive Application Security Testing (IAST) | Analyze applications during execution. |
| Software Composition Analysis (SCA) | Detect vulnerable third-party dependencies. |
| Container Security Testing | Scan container images and configurations. |

## Security Validation Areas

| Area | Purpose |
|------|---------|
| Authentication | Verify user identity securely. |
| Authorization | Validate access permissions. |
| Input Validation | Prevent invalid or malicious input. |
| Secrets Management | Protect credentials and sensitive data. |
| Dependency Security | Identify vulnerable libraries. |
| API Security | Validate service interfaces and communication. |
| Infrastructure Security | Protect deployment environments. |

## Best Practices

- Shift security left.
- Automate security validation.
- Scan dependencies continuously.
- Validate security during CI/CD.
- Protect secrets throughout the pipeline.
- Regularly update dependencies and security policies.

## Common Mistakes

- Treating security as a final release step.
- Ignoring third-party dependencies.
- Hardcoding secrets.
- Depending solely on penetration testing.
- Ignoring security findings.
- Failing to retest after remediation.

## Interview Focus

Be prepared to explain:

- SAST vs DAST vs IAST
- Vulnerability Assessment vs Penetration Testing
- Software Composition Analysis (SCA)
- Shift Left Security
- OWASP Top 10
- Security testing in CI/CD

## Related Topics

- DevSecOps
- Continuous Testing
- Security
- Enterprise Testing
- Software Engineering

## Next

Continue with **08-quality-engineering.md** to understand how modern engineering organizations build quality into every stage of software development rather than relying solely on testing.
