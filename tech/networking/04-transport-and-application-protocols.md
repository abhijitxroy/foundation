# Transport & Application Protocols

## Overview

Applications communicate by exchanging data using standardized protocols. Whether loading a website, streaming video, sending email, making API requests, or connecting microservices, transport and application layer protocols ensure reliable, secure, and efficient communication.

Understanding these protocols enables engineers to design scalable distributed systems, troubleshoot communication issues, and select the appropriate protocol for different workloads.

## Definition

**Transport Protocols** provide end-to-end communication between applications running on different hosts.

**Application Protocols** define how applications exchange information over a network by specifying message formats, communication rules, and expected behaviors.

Together, they enable modern Internet communication.

## Objectives

- Understand end-to-end communication.
- Learn TCP and UDP characteristics.
- Understand common application protocols.
- Choose appropriate protocols.
- Improve application reliability.
- Support distributed systems.

## Communication Flow

```text
Application
      │
      ▼
Application Protocol
      │
      ▼
Transport Protocol
      │
      ▼
IP Network
      │
      ▼
Destination Host
      │
      ▼
Application
```

## Transport Protocols

| Protocol | Purpose |
|----------|---------|
| TCP | Reliable, connection-oriented communication. |
| UDP | Fast, connectionless communication with minimal overhead. |

## TCP vs UDP

| TCP | UDP |
|-----|-----|
| Connection-oriented | Connectionless |
| Reliable delivery | Best-effort delivery |
| Ordered packets | Packet ordering not guaranteed |
| Error recovery | No retransmission |
| Higher overhead | Lower overhead |
| Suitable for web applications, APIs, databases | Suitable for streaming, gaming, DNS, VoIP |

## Common Application Protocols

| Protocol | Purpose |
|----------|---------|
| HTTP | Transfer web content. |
| HTTPS | Secure web communication using TLS. |
| WebSocket | Full-duplex communication between client and server. |
| gRPC | High-performance remote procedure calls using HTTP/2. |
| DNS | Resolve domain names to IP addresses. |
| SMTP | Send email messages. |
| IMAP | Retrieve and synchronize email. |
| FTP | Transfer files between systems. |
| SSH | Secure remote administration. |

## Selecting the Right Protocol

| Requirement | Recommended Protocol |
|-------------|----------------------|
| Reliable communication | TCP |
| Low latency | UDP |
| Secure web APIs | HTTPS |
| Real-time bidirectional communication | WebSocket |
| Internal microservices | gRPC |
| Remote server management | SSH |
| Email delivery | SMTP |

## Best Practices

- Select protocols based on application requirements.
- Use HTTPS for all Internet-facing services.
- Minimize unnecessary network round trips.
- Encrypt sensitive communications.
- Monitor protocol performance.
- Understand protocol limitations before adoption.

## Common Mistakes

- Using TCP where low latency is more important than reliability.
- Sending sensitive information over unencrypted protocols.
- Treating HTTP and HTTPS as interchangeable.
- Choosing protocols based only on familiarity.
- Ignoring protocol overhead.
- Misusing WebSockets for request-response workloads.

## Interview Focus

Be prepared to explain:

- TCP vs UDP
- HTTP vs HTTPS
- WebSocket
- gRPC
- DNS
- SSH
- Choosing protocols for different application requirements

## Related Topics

- OSI & TCP/IP Models
- IP Addressing & Routing
- DNS & Load Balancing
- Cloud Networking
- System Design

## Next

Continue with **05-dns-and-load-balancing.md** to understand how requests are resolved, routed, and distributed efficiently across modern applications and cloud infrastructure.
