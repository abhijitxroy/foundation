# Network Security

## Overview

Networks form the communication backbone of modern software systems. Every application, cloud service, API, database, and user interaction traverses a network, making it a primary target for cyberattacks. Network Security protects systems, services, and data from unauthorized access, interception, modification, and disruption while maintaining confidentiality, integrity, and availability.

Strong network security is achieved by combining secure architecture, layered defenses, continuous monitoring, and well-defined access controls.

## Definition

Network Security is the engineering discipline of protecting network infrastructure, communication channels, connected systems, and transmitted data from unauthorized access, cyber threats, and operational risks through preventive, detective, and corrective controls.

## Objectives

- Protect network communication.
- Prevent unauthorized access.
- Secure sensitive data.
- Minimize attack surfaces.
- Detect and respond to threats.
- Maintain reliable network operations.

## Security Architecture

```text
Internet
    │
    ▼
Firewall
    │
    ▼
DMZ / Edge Services
    │
    ▼
Load Balancer
    │
    ▼
Application Network
    │
    ▼
Database Network
    │
    ▼
Monitoring & Logging
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Firewall | Filter network traffic based on security policies. |
| TLS/SSL | Encrypt communication between systems. |
| VPN | Secure communication over untrusted networks. |
| Zero Trust | Verify every request regardless of network location. |
| Network Segmentation | Isolate workloads to reduce attack surfaces. |
| Intrusion Detection (IDS) | Detect suspicious network activity. |
| Intrusion Prevention (IPS) | Detect and block malicious traffic automatically. |
| Access Control | Restrict network access based on defined policies. |

## Security Layers

| Layer | Purpose |
|-------|---------|
| Physical Security | Protect networking infrastructure. |
| Network Security | Secure communication between systems. |
| Transport Security | Encrypt transmitted data. |
| Application Security | Protect applications and APIs. |
| Identity & Access Management | Control authentication and authorization. |
| Monitoring & Incident Response | Detect and respond to threats. |

## Common Security Technologies

| Technology | Purpose |
|------------|---------|
| TLS/HTTPS | Secure web communication. |
| VPN | Secure remote connectivity. |
| Web Application Firewall (WAF) | Protect web applications from common attacks. |
| Network Firewall | Control network traffic. |
| IDS/IPS | Detect and prevent malicious activity. |
| Bastion Host | Secure administrative access to private networks. |

## Best Practices

- Encrypt all sensitive communications.
- Apply the principle of least privilege.
- Segment networks according to trust boundaries.
- Monitor network activity continuously.
- Keep networking devices and software updated.
- Validate security controls regularly.

## Common Mistakes

- Trusting internal networks by default.
- Leaving unnecessary ports open.
- Using unencrypted communication.
- Weak firewall configurations.
- Ignoring network monitoring.
- Delaying security updates.

## Interview Focus

Be prepared to explain:

- Firewall
- TLS vs SSL
- VPN
- Zero Trust Architecture
- Network Segmentation
- IDS vs IPS
- WAF
- Principle of Least Privilege

## Related Topics

- DNS & Load Balancing
- Cloud Networking
- Security
- DevSecOps
- System Design

## Next

Continue with **07-cloud-networking.md** to understand how networking concepts are implemented in cloud platforms using virtual networks, subnets, gateways, routing, and security controls.
