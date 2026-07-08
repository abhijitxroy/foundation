# IP Addressing & Routing

## Overview

Every device connected to a network requires a unique identity and a mechanism for exchanging data with other devices. IP addressing identifies devices, while routing determines the path that data takes across interconnected networks.

Without IP addressing and routing, communication between applications, cloud services, distributed systems, and the Internet would not be possible.

## Definition

An **IP Address** is a logical identifier assigned to a device on a network, enabling it to send and receive data.

**Routing** is the process of determining the optimal path for forwarding packets from a source to a destination across one or more networks.

Together, they provide the foundation for communication in modern computer networks.

## Objectives

- Understand IP addressing.
- Learn how packets are routed.
- Distinguish between IPv4 and IPv6.
- Understand subnetting and CIDR.
- Learn public and private addressing.
- Understand Network Address Translation (NAT).

## Packet Journey

```text
Application
      │
      ▼
Source Device
      │
      ▼
Router
      │
      ▼
Internet
      │
      ▼
Destination Router
      │
      ▼
Destination Device
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| IP Address | Unique logical identifier for a network device. |
| IPv4 | 32-bit addressing scheme widely used today. |
| IPv6 | 128-bit addressing scheme designed to overcome IPv4 limitations. |
| Subnet | Logical division of a network into smaller segments. |
| CIDR | Efficient representation of network prefixes and address ranges. |
| Gateway | Connects one network to another. |
| Router | Forwards packets between networks. |
| Routing Table | Stores paths used to forward network traffic. |
| NAT | Translates private IP addresses to public IP addresses. |

## IPv4 vs IPv6

| IPv4 | IPv6 |
|------|------|
| 32-bit addresses | 128-bit addresses |
| Limited address space | Vast address space |
| Uses NAT extensively | NAT generally unnecessary |
| Example: 192.168.1.10 | Example: 2001:db8::10 |

## Public vs Private IP Addresses

| Public IP | Private IP |
|-----------|------------|
| Globally routable | Used within private networks |
| Assigned by Internet Service Providers | Assigned locally within an organization or home network |
| Reachable over the Internet | Not directly reachable from the Internet |

## Routing Types

| Type | Purpose |
|------|---------|
| Static Routing | Routes configured manually. |
| Dynamic Routing | Routes learned automatically through routing protocols. |
| Default Route | Used when no specific route exists. |

## Network Address Translation (NAT)

NAT enables multiple devices within a private network to share one or more public IP addresses.

Benefits include:

- Conserving IPv4 addresses.
- Hiding internal network structure.
- Simplifying Internet connectivity.

## Best Practices

- Plan IP addressing before deployment.
- Use CIDR efficiently.
- Minimize unnecessary network complexity.
- Document addressing schemes.
- Monitor routing behavior.
- Design for future growth.

## Common Mistakes

- Overlapping IP address ranges.
- Poor subnet planning.
- Confusing IP addresses with MAC addresses.
- Ignoring IPv6 adoption.
- Misconfigured routing tables.
- Overusing static routing in dynamic environments.

## Interview Focus

Be prepared to explain:

- IPv4 vs IPv6
- Public vs Private IP
- Subnetting
- CIDR notation
- Routing
- Routing Tables
- NAT

## Related Topics

- Networking Foundations
- OSI & TCP/IP Models
- Transport Protocols
- Cloud Networking
- System Design

## Next

Continue with **04-transport-and-application-protocols.md** to understand how TCP, UDP, HTTP, HTTPS, WebSockets, gRPC, and other protocols enable reliable communication between modern applications.
