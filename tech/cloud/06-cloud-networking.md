# Cloud Networking

## Overview

Cloud resources rarely operate in isolation. Applications, databases, containers, virtual machines, and managed services must communicate securely and efficiently across private networks, the Internet, and hybrid environments. Cloud Networking provides the virtual infrastructure that enables scalable, reliable, and secure communication while abstracting the complexity of physical networking.

Understanding Cloud Networking is essential for designing distributed systems, deploying cloud-native applications, and operating modern cloud platforms.

## Definition

**Cloud Networking** is the engineering discipline of designing, configuring, securing, and managing virtual network infrastructure within cloud environments to enable communication between cloud resources, users, and external systems.

It extends traditional networking through software-defined infrastructure, automation, and elastic resource management.

## Objectives

- Understand virtual cloud networking.
- Design secure network architectures.
- Enable scalable communication.
- Protect cloud workloads.
- Support hybrid connectivity.
- Optimize network performance.

## Cloud Networking Architecture

```text
Internet
    │
    ▼
Internet Gateway
    │
    ▼
Virtual Network (VPC / VNet)
    │
 ┌──┴───────────────┐
 ▼                  ▼
Public Subnet   Private Subnet
 │                  │
Load Balancer   Application Services
 │                  │
 └──────────┬───────┘
            ▼
       Database Subnet
            │
            ▼
     Private Storage Services
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Virtual Network (VPC/VNet) | Isolated virtual network for cloud resources. |
| Subnet | Logical subdivision of a virtual network. |
| Route Table | Control network traffic routing. |
| Internet Gateway | Enable Internet connectivity. |
| NAT Gateway | Provide outbound Internet access for private resources. |
| Security Groups | Stateful resource-level firewall rules. |
| Network ACL | Stateless subnet-level access control. |
| Private Connectivity | Secure communication without using the public Internet. |

## Public vs Private Subnets

| Public Subnet | Private Subnet |
|--------------|----------------|
| Direct Internet access through an Internet Gateway. | No direct Internet access. |
| Hosts public-facing services. | Hosts internal applications and databases. |
| Higher external exposure. | Improved isolation and security. |

## Connectivity Options

| Connectivity | Purpose |
|-------------|---------|
| Internet Gateway | Public Internet access. |
| NAT Gateway | Outbound-only Internet connectivity. |
| VPN | Secure connection between on-premises and cloud. |
| Private Peering | Private communication between virtual networks. |
| Dedicated Connection | High-bandwidth private connection to cloud infrastructure. |

## Traffic Management

Cloud networking commonly includes:

- DNS
- Load Balancing
- Service Discovery
- Routing
- Traffic Filtering
- Network Segmentation

These services improve scalability, availability, and operational efficiency.

## Best Practices

- Place sensitive workloads in private subnets.
- Apply least-privilege firewall rules.
- Separate workloads using multiple subnets.
- Monitor network traffic continuously.
- Encrypt network communication.
- Design for redundancy and fault tolerance.

## Common Mistakes

- Deploying databases in public subnets.
- Overly permissive firewall rules.
- Poor subnet planning.
- Ignoring route table configuration.
- Missing network monitoring.
- Assuming cloud providers automatically secure networking.

## Interview Focus

Be prepared to explain:

- Virtual Networks (VPC/VNet)
- Public vs Private Subnets
- Internet Gateway
- NAT Gateway
- Route Tables
- Security Groups vs Network ACLs
- VPN
- Private Connectivity

## Related Topics

- Networking
- Cloud Security
- Cloud Compute
- Cloud Storage
- Distributed Systems

## Next

Continue with **07-cloud-security.md** to understand how cloud environments protect identities, workloads, data, networks, and infrastructure using security controls, encryption, governance, and the shared responsibility model.
