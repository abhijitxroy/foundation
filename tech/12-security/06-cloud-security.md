# Cloud Security

## Overview

Cloud computing provides scalable infrastructure, managed services, and global availability, but it also introduces new security challenges. Organizations remain responsible for securing identities, applications, data, configurations, and workloads even when infrastructure is managed by a cloud provider.

Cloud Security applies security principles specifically to cloud environments by combining identity management, encryption, governance, monitoring, automation, and compliance to protect cloud resources throughout their lifecycle.

## Definition

**Cloud Security** is the engineering discipline of protecting cloud infrastructure, workloads, identities, applications, networks, and data using security controls, governance, monitoring, automation, and risk management.

Its objective is to ensure confidentiality, integrity, availability, and regulatory compliance while enabling secure cloud adoption.

## Objectives

- Secure cloud identities.
- Protect workloads and applications.
- Secure cloud networks.
- Protect sensitive data.
- Automate security controls.
- Ensure governance and compliance.

## Cloud Security Architecture

```text
Users & Services
        │
        ▼
Identity & Access Management
        │
        ▼
Cloud Resources
        │
        ├── Compute
        ├── Storage
        ├── Networking
        ├── Databases
        ├── Containers
        └── Serverless
               │
               ▼
Monitoring & Security Services
               │
               ▼
Compliance & Governance
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Identity & Access Management (IAM) | Control authentication and authorization. |
| Encryption | Protect data at rest and in transit. |
| Secrets Management | Secure credentials, certificates, and API keys. |
| Network Security | Protect communication between cloud resources. |
| Security Monitoring | Detect threats and suspicious activities. |
| Compliance | Meet regulatory and organizational requirements. |
| Shared Responsibility Model | Define security responsibilities between provider and customer. |
| Cloud Governance | Standardize cloud security policies and operations. |

## Security Layers

| Layer | Purpose |
|-------|---------|
| Identity Security | Protect users, roles, and service accounts. |
| Compute Security | Secure virtual machines, containers, and serverless functions. |
| Network Security | Protect virtual networks and communication channels. |
| Data Security | Protect stored and transmitted information. |
| Application Security | Secure cloud-hosted applications and APIs. |
| Monitoring & Response | Detect, investigate, and respond to threats. |

## Shared Responsibility Model

| Cloud Provider | Customer |
|----------------|----------|
| Physical facilities | Identity and access management |
| Physical hardware | Applications and services |
| Networking infrastructure | Data protection |
| Hypervisor | Operating system (where applicable) |
| Managed cloud platform | Configuration and access policies |

The exact responsibilities depend on whether the service is IaaS, PaaS, SaaS, or FaaS.

## Best Practices

- Apply the principle of least privilege.
- Enable Multi-Factor Authentication (MFA).
- Encrypt sensitive data.
- Secure secrets using dedicated secret management solutions.
- Continuously monitor cloud environments.
- Automate security policy enforcement.
- Regularly review cloud configurations.

## Common Mistakes

- Overly permissive IAM policies.
- Publicly exposed storage resources.
- Hardcoded credentials.
- Ignoring cloud security monitoring.
- Assuming the cloud provider secures customer workloads completely.
- Failing to rotate secrets and keys.

## Interview Focus

Be prepared to explain:

- Cloud Security
- Shared Responsibility Model
- Identity & Access Management (IAM)
- Encryption
- Secrets Management
- Cloud Governance
- Security Monitoring
- Least Privilege

## Related Topics

- Security Foundations
- Identity & Access Management
- Network Security
- DevSecOps
- Enterprise Security Engineering

## Next

Continue with **07-devsecops.md** to understand how security is integrated into the software development lifecycle through automation, secure CI/CD pipelines, vulnerability management, and continuous security practices.
