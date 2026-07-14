# Modern C++ - Quick Revision (30 Minutes)

> Purpose: This document is the primary revision guide for Senior Modern C++ and Semiconductor interviews.
>
> Target Roles:
> - AMD SMTS
> - Intel Senior Engineer
> - NVIDIA System Software Engineer
> - Qualcomm Staff Engineer
> - Senior C++ / Platform Engineering Roles
>
> Revision Strategy:
> - Revise this document first.
> - Revise phase-level QUICK-REVISION.md files next.
> - Finally revise Interview Preparation materials.

---

## Phase 1 – C++ Basics (5 Minutes)

Focus Areas:
- Variables and Data Types
- References and Pointers
- Functions and Header Files
- Namespaces
- Classes and Objects
- Constructors and Destructors
- Copy Constructor and Assignment Operator
- Static Members
- Const Correctness

Interview Focus:
- Why was C++ created?
- Why use references over pointers?
- Why does const correctness matter?
- How does compilation work?

---

## Phase 2 – Object-Oriented Programming (5 Minutes)

Focus Areas:
- Encapsulation
- Inheritance
- Polymorphism
- Virtual Functions
- Pure Virtual Functions
- Abstract Classes
- Friend Classes and Functions

Interview Focus:
- Runtime vs Compile-time polymorphism.
- Why are virtual functions important?
- When should inheritance be avoided?

---

## Phase 3 – Modern C++ (5 Minutes)

Focus Areas:
- RAII
- Smart Pointers
- Move Semantics
- Rvalue References
- std::move
- Rule of Three, Five and Zero
- Templates
- STL Containers
- Iterators
- Algorithms
- Lambdas
- auto
- constexpr
- enum class

Interview Focus:
- Ownership semantics.
- Why use unique_ptr over shared_ptr?
- What problem does Move Semantics solve?
- Why does RAII exist?

---

## Phase 4 – Memory (5 Minutes)

Focus Areas:
- Stack vs Heap
- Memory Layout
- Dynamic Allocation
- new / delete
- Memory Leaks
- Dangling Pointers
- Undefined Behaviour

Interview Focus:
- Why wasn't stack allocation sufficient?
- How do memory leaks occur?
- What causes undefined behaviour?

---

## Phase 5 – Concurrency (3 Minutes)

Focus Areas:
- Threads
- Mutex
- Locks
- Condition Variables
- Atomic Variables

Interview Focus:
- Why is synchronization required?
- Why use mutex over atomics?
- How do race conditions occur?

---

## Phase 6 – Exception Handling (3 Minutes)

Focus Areas:
- try / catch
- noexcept
- Exception Safety

Interview Focus:
- Can this operation fail?
- Will resources always be cleaned up?
- Can the implementation remain exception safe?

---

## Phase 7 – Build Systems (2 Minutes)

Focus Areas:
- CMake
- Static Libraries
- Shared Libraries

Interview Focus:
- Why was CMake chosen?
- Why use Static Libraries?
- Why use Shared Libraries?
- Will this design scale?

---

## Senior Engineer Thinking

Always Ask:

1. Who owns this resource?
2. Who can access it?
3. What happens if it fails?
4. Will the implementation scale?
5. Why was this design chosen?
6. Can production failures be handled gracefully?
7. Can the implementation remain maintainable?

---

## Production Debugging Checklist

Ask:

- Can this operation fail?
- Is ownership managed correctly?
- Are race conditions possible?
- Is resource cleanup guaranteed?
- Is memory management correct?
- Is the build system scalable?
- Can CI/CD pipelines build it reliably?

---

## Semiconductor Interview Checklist

Prepare to discuss:

- Modern C++ Fundamentals
- Memory Management
- Concurrency
- Production Debugging
- GoogleTest
- Build Systems
- Platform Engineering Concepts
- Engineering Trade-offs
- Leadership Discussions
- Production Quality Software Design

---

## Modern C++ Philosophy

Can I write it?
        ↓
Can I design it?
        ↓
Can I manage resources safely?
        ↓
Can I make it thread-safe?
        ↓
Can it survive failures?
        ↓
Can it scale?
        ↓
Can I defend my design decisions?
        ↓
Become a Senior Modern C++ Engineer.

---

## Revision Order Before Interviews

1. QUICK-REVISION.md
2. Phase QUICK-REVISION.md files.
3. Interview Preparation Materials.
4. Mock Interviews.
5. Semiconductor Interview Notes.
6. Production Debugging Discussions.

---

## Status

- Repository Structure: Frozen.
- Primary Focus: Content Quality and Interview Preparation.
- Goal: Senior Modern C++ Engineering Excellence.
- Outcome: Semiconductor and Senior Platform Engineering Interview Ready.