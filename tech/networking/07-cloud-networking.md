# Cloud Networking

## Overview

Modern applications increasingly run on cloud platforms where networking is implemented through software-defined infrastructure rather than physical devices. Cloud Networking enables secure, scalable, highly available communication between applications, databases, services, users, and the Internet while abstracting much of the underlying hardware.

Understanding Cloud Networking is essential for designing distributed systems, deploying applications securely, and operating cloud-native platforms.

## Definition

Cloud Networking is the engineering discipline of designing, configuring, securing, and operating virtual network infrastructure within cloud environments to enable reliable communication between cloud resources and external systems.

It extends traditional networking concepts through virtualization, automation, elasticity, and software-defined networking.

## Objectives

- Understand virtual networking.
- Design secure cloud networks.
- Isolate workloads effectively.
- Enable Internet and private connectivity.
- Support scalable cloud architectures.
- Improve operational reliability.

## Cloud Network Architecture

```text
Internet
    │
    ▼
Internet Gateway
    │
    ▼
Virtual Private Cloud (VPC / VNet)
    │
    ├──────────────┐
    ▼              ▼
Public Subnet   Private Subnet
    │              │
Load Balancer   Application Servers
                   │
                   ▼
               Database Subnet
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Virtual Private Cloud (VPC/VNet) | Isolated virtual network within a cloud provider. |
| Subnet | Logical division of a virtual network. |
| Internet Gateway | Connect cloud resources to the Internet. |
| NAT Gateway | Allow outbound Internet access from private resources. |
| Route Table | Control packet routing within the cloud network. |
| Security Group | Stateful firewall controlling resource-level traffic. |
| Network ACL | Stateless subnet-level traffic filtering. |
| Peering | Connect multiple virtual networks privately. |

## Public vs Private Subnets

| Public Subnet | Private Subnet |
|--------------|----------------|
| Accessible from the Internet through an Internet Gateway. | No direct Internet access. |
| Hosts load balancers, bastion hosts, or public services. | Hosts applications, databases, and internal services. |
| Higher exposure to external traffic. | Better isolation and security. |

## Cloud Connectivity Options

| Connectivity | Purpose |
|-------------|---------|
| Internet Gateway | Public Internet connectivity. |
| NAT Gateway | Outbound Internet access for private resources. |
| VPC/VNet Peering | Private communication between virtual networks. |
| VPN | Secure connectivity between on-premises and cloud. |
| Dedicated Connection | High-bandwidth private connection to cloud providers. |

## Best Practices

- Keep sensitive workloads in private subnets.
- Apply least-privilege network rules.
- Segment workloads using multiple subnets.
- Use security groups and network ACLs together.
- Avoid exposing databases directly to the Internet.
- Continuously monitor cloud network traffic.

## Common Mistakes

- Deploying databases in public subnets.
- Overly permissive firewall rules.
- Poor subnet planning.
- Missing route table configurations.
- Ignoring network segmentation.
- Treating cloud networking like traditional flat networks.

## Interview Focus

Be prepared to explain:

- Virtual Private Cloud (VPC/VNet)
- Public vs Private Subnets
- Internet Gateway
- NAT Gateway
- Route Tables
- Security Groups vs Network ACLs
- VPC Peering
- VPN Connectivity

## Related Topics

- Network Security
- Cloud
- System Design
- Distributed Systems
- DevOps

## Next

Continue with **08-network-performance.md** to understand how latency, bandwidth, throughput, packet loss, and network optimization influence application performance and user experience.
