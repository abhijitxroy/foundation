# Cloud Security

## Overview

Cloud platforms provide powerful infrastructure and managed services, but security remains a shared responsibility between cloud providers and customers. Misconfigured identities, overly permissive access, exposed storage, insecure networks, or poor key management can lead to serious security incidents.

Cloud Security applies security principles across cloud infrastructure, identities, applications, data, and operations to ensure confidentiality, integrity, availability, and regulatory compliance.

## Definition

**Cloud Security** is the engineering discipline of protecting cloud infrastructure, workloads, identities, applications, networks, and data through security controls, governance, monitoring, encryption, and continuous risk management.

It combines traditional security principles with cloud-native technologies and operational practices.

## Objectives

- Protect cloud resources.
- Secure identities and access.
- Safeguard sensitive data.
- Reduce attack surfaces.
- Ensure regulatory compliance.
- Detect and respond to security threats.

## Cloud Security Architecture

```text
Users
   │
   ▼
Identity & Access Management
   │
   ▼
Cloud Platform
   │
   ├── Compute Security
   ├── Storage Security
   ├── Network Security
   ├── Data Encryption
   ├── Monitoring
   └── Compliance
          │
          ▼
Cloud Infrastructure
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Identity & Access Management (IAM) | Control authentication and authorization. |
| Encryption | Protect data at rest and in transit. |
| Secrets Management | Securely store passwords, API keys, and certificates. |
| Network Security | Protect communication between cloud resources. |
| Security Monitoring | Detect threats and suspicious activities. |
| Compliance | Meet legal, regulatory, and organizational requirements. |
| Security Policies | Standardize cloud security practices. |
| Shared Responsibility Model | Define security responsibilities between provider and customer. |

## Security Layers

| Layer | Purpose |
|-------|---------|
| Identity Security | Protect users, roles, and service accounts. |
| Network Security | Secure communication and network boundaries. |
| Compute Security | Protect virtual machines, containers, and serverless workloads. |
| Storage Security | Secure stored data and backups. |
| Application Security | Protect applications and APIs. |
| Monitoring & Auditing | Continuously observe security events and activities. |

## Shared Responsibility

| Cloud Provider | Customer |
|----------------|----------|
| Physical infrastructure | Identity and access management |
| Networking infrastructure | Applications |
| Hypervisor | Data |
| Managed services platform | Operating systems (where applicable) |
| Availability of cloud services | Configuration and security policies |

The exact responsibilities vary depending on whether the service is IaaS, PaaS, SaaS, or FaaS.

## Best Practices

- Apply the principle of least privilege.
- Enable multi-factor authentication (MFA).
- Encrypt sensitive data.
- Rotate secrets regularly.
- Continuously monitor cloud activity.
- Automate security policy enforcement.

## Common Mistakes

- Overly permissive IAM policies.
- Publicly exposed storage resources.
- Hardcoding secrets in applications.
- Ignoring security monitoring.
- Assuming cloud providers secure customer workloads automatically.
- Delaying security updates.

## Interview Focus

Be prepared to explain:

- Cloud Security
- Identity & Access Management (IAM)
- Encryption
- Secrets Management
- Shared Responsibility Model
- Least Privilege
- Compliance
- Security Monitoring

## Related Topics

- Cloud Networking
- Network Security
- DevSecOps
- Cloud Operations
- Enterprise Cloud Engineering

## Next

Continue with **08-cloud-native-architecture.md** to understand how cloud-native applications leverage microservices, containers, Kubernetes, event-driven systems, and modern architectural principles for scalability and resilience.