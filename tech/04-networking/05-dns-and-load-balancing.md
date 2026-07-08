# DNS & Load Balancing

## Overview

Users access applications through domain names rather than IP addresses. Modern applications also serve millions of requests across multiple servers, regions, and cloud environments. DNS translates human-readable names into IP addresses, while Load Balancing distributes traffic across multiple resources to improve scalability, availability, and reliability.

Together, DNS and Load Balancing form the foundation of modern Internet-scale systems.

## Definition

**Domain Name System (DNS)** is the distributed naming system that translates domain names into IP addresses.

**Load Balancing** is the process of distributing incoming network traffic across multiple servers or services to maximize availability, scalability, and performance.

## Objectives

- Resolve domain names efficiently.
- Route traffic correctly.
- Improve application availability.
- Scale services horizontally.
- Eliminate single points of failure.
- Optimize user experience.

## Request Flow

```text
User
 │
 ▼
DNS Resolution
 │
 ▼
Load Balancer
 │
 ├── Server A
 ├── Server B
 └── Server C
        │
        ▼
Application Response
```

## DNS Resolution Process

```text
Application
      │
      ▼
Local DNS Cache
      │
      ▼
Recursive Resolver
      │
      ▼
Root DNS Server
      │
      ▼
Top-Level Domain (TLD)
      │
      ▼
Authoritative DNS Server
      │
      ▼
IP Address Returned
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| DNS | Translate domain names into IP addresses. |
| DNS Resolver | Query DNS records on behalf of clients. |
| Authoritative DNS | Store official DNS records for a domain. |
| DNS Cache | Reduce lookup latency by storing previous responses. |
| CDN | Deliver content closer to users geographically. |
| Reverse Proxy | Receive client requests and forward them to backend services. |
| Load Balancer | Distribute traffic across multiple servers. |
| Service Discovery | Enable applications to locate services dynamically. |

## Load Balancing Algorithms

| Algorithm | Purpose |
|-----------|---------|
| Round Robin | Distribute requests evenly across servers. |
| Least Connections | Send traffic to the server with the fewest active connections. |
| Weighted Round Robin | Distribute requests based on server capacity. |
| IP Hash | Route requests based on client IP. |
| Least Response Time | Select the fastest responding server. |

## Types of Load Balancing

| Type | Purpose |
|------|---------|
| Layer 4 Load Balancing | Route traffic using IP addresses and ports. |
| Layer 7 Load Balancing | Route requests using application-level information such as URLs or HTTP headers. |
| Global Load Balancing | Distribute traffic across multiple geographic regions. |

## Best Practices

- Configure DNS with appropriate TTL values.
- Use redundant DNS providers where appropriate.
- Deploy multiple load balancer instances.
- Continuously monitor traffic distribution.
- Perform health checks on backend services.
- Eliminate single points of failure.

## Common Mistakes

- Single DNS provider without redundancy.
- Poor DNS cache configuration.
- Ignoring backend health checks.
- Uneven traffic distribution.
- Using a single load balancer without failover.
- Confusing DNS routing with load balancing.

## Interview Focus

Be prepared to explain:

- DNS Resolution
- DNS Caching
- CDN Basics
- Reverse Proxy
- Layer 4 vs Layer 7 Load Balancing
- Common Load Balancing Algorithms
- Service Discovery

## Related Topics

- Transport & Application Protocols
- Cloud Networking
- System Design
- Distributed Systems
- Network Performance

## Next

Continue with **06-network-security.md** to understand how networks are protected using encryption, firewalls, secure communication protocols, segmentation, and Zero Trust principles.

