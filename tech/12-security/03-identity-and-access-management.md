# Identity & Access Management

## Overview

Every modern system must ensure that only the right users, applications, and services can access the right resources at the right time. Identity & Access Management (IAM) provides the framework for verifying identities, controlling permissions, and enforcing security policies across applications, infrastructure, and cloud platforms.

Effective IAM reduces the risk of unauthorized access, protects sensitive data, and enables secure collaboration while maintaining usability and regulatory compliance.

## Definition

**Identity & Access Management (IAM)** is the engineering discipline of managing digital identities and controlling access to systems, applications, and resources through authentication, authorization, and policy enforcement.

Its objective is to ensure that authenticated entities receive only the permissions necessary to perform their intended tasks.

## Objectives

- Verify identities securely.
- Control access to resources.
- Apply least-privilege access.
- Centralize identity management.
- Improve security and compliance.
- Support scalable access control.

## IAM Architecture

```text
User / Service
       │
       ▼
Authentication
       │
       ▼
Identity Provider
       │
       ▼
Authorization
       │
       ▼
Access Policies
       │
       ▼
Applications & Resources
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Identity | Represents a user, application, or service. |
| Authentication | Verify an identity. |
| Authorization | Determine what an authenticated identity can access. |
| Identity Provider (IdP) | Manage user identities and authentication. |
| Access Policy | Define permissions and access rules. |
| Session | Maintain authenticated user interactions. |
| Federation | Allow identities to access multiple systems through trust relationships. |

## Authentication Methods

| Method | Purpose |
|--------|---------|
| Password | Verify identity using a secret. |
| Multi-Factor Authentication (MFA) | Require two or more independent authentication factors. |
| Biometrics | Authenticate using physical characteristics. |
| Hardware Token | Use a physical device for authentication. |
| Certificate-Based Authentication | Verify identity using digital certificates. |
| Passwordless Authentication | Authenticate without traditional passwords. |

## Authorization Models

| Model | Description |
|-------|-------------|
| Role-Based Access Control (RBAC) | Permissions assigned through predefined roles. |
| Attribute-Based Access Control (ABAC) | Access determined by user, resource, and environmental attributes. |
| Policy-Based Access Control (PBAC) | Access governed by centralized policies. |
| Discretionary Access Control (DAC) | Resource owners control permissions. |
| Mandatory Access Control (MAC) | Access enforced through centrally defined security rules. |

## Authentication vs Authorization

| Authentication | Authorization |
|---------------|---------------|
| Verifies identity | Determines permissions |
| Answers "Who are you?" | Answers "What are you allowed to do?" |
| Happens before authorization | Happens after authentication |

## Single Sign-On (SSO)

Single Sign-On allows users to authenticate once and securely access multiple applications without repeatedly entering credentials.

Benefits include:

- Improved user experience.
- Centralized identity management.
- Reduced password fatigue.
- Simplified security administration.

## Best Practices

- Enable Multi-Factor Authentication.
- Apply the principle of least privilege.
- Regularly review permissions.
- Centralize identity management.
- Remove unused accounts promptly.
- Monitor authentication and authorization events.

## Common Mistakes

- Granting excessive permissions.
- Sharing user accounts.
- Weak authentication policies.
- Ignoring dormant accounts.
- Hardcoding credentials.
- Not reviewing access rights regularly.

## Interview Focus

Be prepared to explain:

- Identity & Access Management (IAM)
- Authentication vs Authorization
- Identity Provider (IdP)
- Single Sign-On (SSO)
- Multi-Factor Authentication (MFA)
- RBAC vs ABAC
- Least Privilege
- Federation

## Related Topics

- Security Foundations
- Cryptography
- Cloud Security
- DevSecOps
- Enterprise Security Engineering

## Next

Continue with **04-application-security.md** to understand how secure software development, input validation, API security, session management, and secure coding practices protect applications from common vulnerabilities.
