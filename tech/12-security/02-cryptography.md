# Cryptography

## Overview

Modern software systems continuously exchange sensitive information such as passwords, financial data, personal information, API keys, and business records. Cryptography protects this information from unauthorized access while ensuring authenticity, integrity, and trust across applications, networks, and cloud platforms.

Without cryptography, secure communication over the Internet, digital payments, software updates, authentication systems, and cloud security would not be possible.

## Definition

**Cryptography** is the engineering discipline of securing information through mathematical techniques that provide confidentiality, integrity, authenticity, and non-repudiation.

It enables trusted communication over untrusted networks while protecting data throughout its lifecycle.

## Objectives

- Protect sensitive data.
- Ensure data integrity.
- Verify identities.
- Establish trusted communication.
- Prevent unauthorized access.
- Build secure distributed systems.

## Cryptography Overview

```text
Plaintext
     │
     ▼
Encryption
     │
     ▼
Ciphertext
     │
     ▼
Transmission / Storage
     │
     ▼
Decryption
     │
     ▼
Plaintext
```

## Security Goals

| Goal | Purpose |
|------|---------|
| Confidentiality | Prevent unauthorized access to information. |
| Integrity | Detect unauthorized modifications. |
| Authentication | Verify the identity of users or systems. |
| Non-Repudiation | Prevent parties from denying performed actions. |

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Encryption | Convert readable data into protected ciphertext. |
| Decryption | Convert ciphertext back into readable data. |
| Key | Secret value used for encryption and decryption. |
| Hash Function | Generate a fixed-length fingerprint of data. |
| Digital Signature | Verify authenticity and integrity. |
| Certificate | Bind an identity to a public key. |
| Public Key Infrastructure (PKI) | Manage digital certificates and trust relationships. |

## Symmetric vs Asymmetric Encryption

| Symmetric Encryption | Asymmetric Encryption |
|----------------------|-----------------------|
| Same key encrypts and decrypts data | Uses separate public and private keys |
| Faster | Slower |
| Suitable for large data encryption | Suitable for secure key exchange and authentication |
| Requires secure key sharing | Public key can be shared openly |

## Hashing

Hashing converts input data into a fixed-length value.

Characteristics:

- One-way operation.
- Deterministic.
- Fast computation.
- Small input changes produce large output differences.
- Used for integrity verification and password storage (with appropriate password hashing algorithms).

## Digital Signatures

Digital signatures provide:

- Authentication
- Integrity
- Non-repudiation

General workflow:

```text
Message
    │
    ▼
Hash
    │
    ▼
Sign with Private Key
    │
    ▼
Digital Signature
    │
    ▼
Verify with Public Key
```

## Certificates & PKI

Digital certificates:

- Verify identities.
- Contain public keys.
- Are issued by trusted Certificate Authorities (CAs).
- Enable secure protocols such as HTTPS.

PKI manages:

- Certificate issuance.
- Certificate validation.
- Certificate renewal.
- Certificate revocation.

## Best Practices

- Use modern, well-established cryptographic algorithms.
- Protect cryptographic keys securely.
- Rotate keys regularly.
- Encrypt sensitive data both at rest and in transit.
- Use secure random number generation.
- Prefer established cryptographic libraries over custom implementations.

## Common Mistakes

- Hardcoding encryption keys.
- Creating custom encryption algorithms.
- Using weak or deprecated algorithms.
- Storing passwords without proper password hashing.
- Ignoring certificate expiration.
- Reusing cryptographic keys unnecessarily.

## Interview Focus

Be prepared to explain:

- Cryptography
- Symmetric vs Asymmetric Encryption
- Hashing
- Digital Signatures
- Certificates
- PKI
- Confidentiality
- Integrity
- Authentication
- Non-Repudiation

## Related Topics

- Security Foundations
- Identity & Access Management
- Network Security
- Cloud Security
- DevSecOps

## Next

Continue with **03-identity-and-access-management.md** to understand how authentication, authorization, identities, roles, permissions, and access policies control who can access systems and resources.
