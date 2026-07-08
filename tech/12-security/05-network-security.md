# Network Security

## Overview

Modern applications communicate continuously across local networks, the Internet, cloud platforms, APIs, and distributed systems. Without proper protection, attackers can intercept communications, gain unauthorized access, disrupt services, or steal sensitive information.

Network Security protects communication channels, network infrastructure, and connected systems through layered security controls, secure protocols, continuous monitoring, and access management.

## Definition

**Network Security** is the engineering discipline of protecting network infrastructure, communication channels, connected systems, and transmitted data from unauthorized access, cyber threats, misuse, and service disruption.

Its objective is to ensure secure, reliable, and resilient communication while maintaining confidentiality, integrity, and availability.

## Objectives

- Secure network communication.
- Prevent unauthorized access.
- Protect sensitive data in transit.
- Reduce network attack surfaces.
- Detect and respond to threats.
- Build resilient network architectures.

## Network Security Architecture

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
Monitoring & Security Operations
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Firewall | Control network traffic based on security policies. |
| VPN | Secure communication across untrusted networks. |
| TLS | Encrypt data in transit. |
| Zero Trust | Verify every user, device, and request. |
| Network Segmentation | Isolate workloads to limit attack propagation. |
| Intrusion Detection System (IDS) | Detect suspicious network activity. |
| Intrusion Prevention System (IPS) | Detect and block malicious traffic automatically. |
| Web Application Firewall (WAF) | Protect web applications from common attacks. |

## Security Layers

| Layer | Purpose |
|-------|---------|
| Perimeter Security | Protect network boundaries. |
| Internal Network Security | Secure communication within trusted environments. |
| Transport Security | Encrypt data during transmission. |
| Application Security | Protect application-layer communication. |
| Identity & Access Control | Restrict access to authorized users and systems. |
| Monitoring & Incident Response | Detect and respond to security events. |

## Common Network Threats

| Threat | Description |
|--------|-------------|
| Man-in-the-Middle (MitM) | Intercept and manipulate communications. |
| Denial of Service (DoS/DDoS) | Overwhelm services with excessive traffic. |
| Packet Sniffing | Capture network traffic to obtain sensitive information. |
| DNS Attacks | Manipulate or disrupt domain name resolution. |
| Port Scanning | Discover exposed network services. |
| Spoofing | Impersonate trusted systems or users. |

## Best Practices

- Encrypt all network communication.
- Apply Zero Trust principles.
- Restrict network access using least privilege.
- Segment critical workloads.
- Monitor network traffic continuously.
- Keep networking devices and security policies updated.

## Common Mistakes

- Trusting internal networks by default.
- Allowing unnecessary open ports.
- Using unencrypted protocols.
- Overly permissive firewall rules.
- Ignoring network monitoring.
- Failing to isolate sensitive systems.

## Interview Focus

Be prepared to explain:

- Network Security
- Firewall
- VPN
- TLS
- Zero Trust
- IDS vs IPS
- WAF
- Network Segmentation
- DoS vs DDoS
- Man-in-the-Middle (MitM)

## Related Topics

- Security Foundations
- Cryptography
- Cloud Security
- Operating System Security
- DevSecOps

## Next

Continue with **06-cloud-security.md** to understand how cloud platforms secure identities, workloads, infrastructure, networking, and data using cloud-native security controls and governance.
