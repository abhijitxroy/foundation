# Modern C++ Interview Preparation - QnA

## Phase 1 - C++ Basics

### Topic 1 - Why C++ Exists

---

## Q1. Why was C++ created if C already existed?

### Answer

C is a procedural programming language that provides excellent performance, direct hardware access, and efficient memory management. However, as software systems became larger and more complex, managing code using only functions and structures became difficult.

C++ was created as an extension of C to add higher-level abstractions such as:

- Classes
- Objects
- Encapsulation
- Inheritance
- Generic Programming
- Code Reuse

while preserving C's strengths:

- High performance
- Low-level hardware access
- Predictable execution
- Manual control over resources

One of the fundamental philosophies of C++ is **zero-cost abstraction**, which aims to provide powerful abstractions without imposing unnecessary runtime overhead.

> **Interview Tip:** Prefer saying *"C++ is an extension of C"* instead of *"C++ is an improved version of C."*

---

### Follow-up Interview Question

#### Why didn't they simply create a completely new language instead of extending C?

### Answer

C already had:

- A massive ecosystem
- Large production codebases
- Mature tooling and compilers
- Experienced developers

By extending C, developers could gradually adopt modern programming techniques while continuing to use existing C libraries and applications.

This design preserved:

- Performance
- Backward compatibility (to a large extent)
- Low-level control
- Existing investments in C

Therefore, C++ provided higher-level abstractions without sacrificing the capabilities that made C successful.

---

## Q2. Why would AMD choose C++ over Java for GPU Drivers?

### Answer

The choice of programming language depends on the problem domain and its constraints.

GPU drivers require:

- Deterministic execution
- Low latency
- Direct hardware interaction
- Precise memory management
- Native machine code generation
- Tight control over memory layout and resource management

C++ provides:

- High performance
- Native machine code compilation
- Manual and predictable resource management
- Low-level system programming capabilities
- Modern abstractions for building large software systems

Although Java provides excellent productivity and safety features, it operates through the JVM and relies on Garbage Collection, which introduces additional abstraction layers and non-deterministic pauses that are generally unsuitable for GPU driver development.

Therefore, C++ is often the preferred choice for performance-critical and hardware-centric software components.

> **Interview Tip:** Avoid saying *"Java cannot communicate with hardware."* Java can communicate with hardware indirectly using native interfaces such as JNI. The key difference is the level of abstraction and control provided by the language.

---

### Follow-up Interview Question

#### If Java is slower because of the JVM, why are many enterprise applications still written in Java instead of C++?

### Answer

The choice of programming language should be driven by requirements and trade-offs.

Enterprise applications typically prioritize:

- Maintainability
- Developer productivity
- Reliability
- Scalability
- Rich ecosystems and frameworks
- Faster development cycles

Most enterprise applications are:

- I/O intensive
- Database intensive
- Network intensive

Examples include:

- REST APIs
- Microservices
- CI/CD platforms
- Cloud-native applications
- Workflow orchestration systems

Java provides:

- Automatic Garbage Collection
- Memory safety
- Excellent tooling support
- Mature frameworks such as Spring Boot
- Reduced development complexity

Therefore, Java is generally better suited for enterprise applications where maintainability and productivity are often more important than absolute peak performance.

> **Interview Tip:** Prefer saying:
>
> - "Java is better suited for enterprise applications."
> - "C++ is preferred for performance-critical systems."
>
> Avoid saying:
>
> - "Java is better than C++."
> - "C++ is better than Java."
>
> Senior engineers usually discuss trade-offs rather than universally declaring one technology superior to another.

---

## Q3. What is Zero-Cost Abstraction?

### Answer

Zero-cost abstraction is one of the core design philosophies of Modern C++.

It is based on two principles:

1. You do not pay for features that you do not use.
2. Features that you do use should be as efficient as reasonably possible when compared to equivalent hand-written low-level code.

Examples include:

- Templates
- STL Containers
- RAII
- constexpr
- Modern compiler optimizations

If a class does not use virtual functions, the compiler does not introduce the overhead associated with virtual dispatch. Similarly, if exception handling is not used, the language attempts to avoid imposing unnecessary runtime costs during normal execution.

Zero-cost abstraction allows developers to write expressive and maintainable code while still achieving near-optimal performance.

> **Important:** Zero-cost abstraction does NOT mean that every C++ feature is free. It means that abstractions should not introduce unnecessary overhead beyond the work fundamentally required by the operation itself.

### Interview Ready Definition

> Zero-cost abstraction is a core design philosophy of C++ that allows developers to use higher-level abstractions without paying unnecessary runtime costs. If a feature is not used, there should be no cost for supporting it. If a feature is used, it should be implemented as efficiently as equivalent hand-written low-level code whenever possible.

---

## Q4. Name Three Advantages of Java over C++

### Answer

1. Automatic memory management through Garbage Collection.
2. Better safety and developer productivity.
3. Excellent suitability for enterprise applications and rich ecosystem support.

Java is generally better suited for REST APIs, microservices, cloud-native applications, and large-scale enterprise systems that prioritize maintainability and developer productivity.

---

## Engineering Mindset for Interviews

Prefer answering questions using the following framework:

Problem → Requirements → Constraints → Trade-offs → Technology Selection → Justification

Examples:

- GPU Drivers → Low latency + Hardware access + Deterministic execution → C++
- Enterprise Applications → Maintainability + Productivity + Scalability + I/O intensive workloads → Java

> **SMTS-Level Interview Advice**
>
> Senior engineers rarely say that one language is universally better than another. Instead, explain why a particular technology is better suited for a given problem domain.

---

## Current Progress

| Topic | Status |
|-------|--------|
| Why C++ Exists | Completed |
| Compilation Process | Pending |
| Variables | Pending |
| Data Types | Pending |
| References | Pending |
| Pointers | Pending |
| Functions | Pending |

**Next Topic:** Compilation Process