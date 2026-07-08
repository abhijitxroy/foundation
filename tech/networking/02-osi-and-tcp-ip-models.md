# OSI & TCP/IP Models

## Overview

Modern networks involve thousands of hardware devices, operating systems, applications, and communication technologies. Without a standardized architecture, devices from different vendors would struggle to communicate reliably.

The OSI and TCP/IP models provide layered frameworks that define how data is transmitted across networks. They simplify network design, improve interoperability, and make troubleshooting easier by separating communication into well-defined responsibilities.

## Definition

The **OSI Model** is a conceptual seven-layer reference model that standardizes network communication.

The **TCP/IP Model** is the practical protocol suite used by the Internet. It combines networking functions into fewer layers while implementing standardized protocols such as IP, TCP, UDP, HTTP, and DNS.

## Objectives

- Understand layered network architecture.
- Explain the responsibilities of each layer.
- Learn how data moves through a network.
- Understand protocol organization.
- Improve troubleshooting skills.
- Prepare for advanced networking topics.

## Network Communication Flow

```text
Application
      │
      ▼
Presentation
      │
      ▼
Session
      │
      ▼
Transport
      │
      ▼
Network
      │
      ▼
Data Link
      │
      ▼
Physical
      │
      ▼
Transmission Medium
```

## OSI Model

| Layer | Responsibility |
|--------|----------------|
| 7. Application | Provides network services to applications. |
| 6. Presentation | Data formatting, encryption, and compression. |
| 5. Session | Establishes and manages communication sessions. |
| 4. Transport | Reliable or unreliable end-to-end communication. |
| 3. Network | Logical addressing and routing. |
| 2. Data Link | Local network communication and error detection. |
| 1. Physical | Transmission of bits over physical media. |

## TCP/IP Model

| Layer | Responsibility |
|--------|----------------|
| Application | User-facing protocols and application services. |
| Transport | End-to-end communication using TCP or UDP. |
| Internet | Logical addressing and routing using IP. |
| Network Access | Physical network communication and hardware interaction. |

## OSI vs TCP/IP

| OSI Model | TCP/IP Model |
|-----------|--------------|
| Seven layers | Four layers |
| Conceptual reference model | Practical implementation |
| Protocol independent | Built around Internet protocols |
| Used for learning and troubleshooting | Used in real-world networking |

## Encapsulation

During transmission, data is wrapped with protocol information at each layer.

```text
Application Data
        │
        ▼
Segment
        │
        ▼
Packet
        │
        ▼
Frame
        │
        ▼
Bits
```

The receiving system performs **decapsulation**, removing protocol information layer by layer until the original application data is reconstructed.

## Best Practices

- Understand the responsibility of each layer.
- Troubleshoot from lower layers upward.
- Separate network issues by layer.
- Use standard protocols whenever possible.
- Recognize that most Internet communication follows the TCP/IP model.
- Use the OSI model as a conceptual framework for analysis.

## Common Mistakes

- Memorizing layers without understanding their purpose.
- Confusing OSI with TCP/IP.
- Assuming every protocol maps perfectly to one OSI layer.
- Ignoring encapsulation and decapsulation.
- Treating layers as completely independent.
- Skipping lower-layer troubleshooting.

## Interview Focus

Be prepared to explain:

- OSI Model
- TCP/IP Model
- OSI vs TCP/IP
- Layer responsibilities
- Encapsulation & Decapsulation
- Why layered architecture is important

## Related Topics

- Networking Foundations
- IP Addressing & Routing
- Transport Protocols
- Operating Systems
- System Design

## Next

Continue with **03-ip-addressing-and-routing.md** to understand how devices are uniquely identified on networks and how data is routed between local and global networks.
