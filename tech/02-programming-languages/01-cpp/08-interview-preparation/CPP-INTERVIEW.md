# CPP Interview Preparation

> Purpose: Single source of truth for Senior Modern C++ interview preparation.
>
> Focus Areas:
> - Modern C++
> - Senior Engineer Interview Preparation
> - Production & Platform Engineering Perspective
> - Interview Ready Answers
> - Common Mistakes and Mental Models
>
> Note: This document is intentionally interview-oriented and company agnostic.
>
> Rules:
> - Interview First Policy.
> - Mental Models over Memorization.
> - Requirements -> Constraints -> Trade-offs -> Engineering Impact -> Business Impact.
> - Prefer concise and focused answers.

> Permanent Learning Philosophy:
> - Always ask WHY before HOW.
> - Mental Models before Syntax.
> - Production Thinking before Language Tricks.
> - Requirements before Implementations.
> - Interview Readiness over Memorization.
>
> Revision Strategy:
> - 2 Months Before Interview: Study all topics phase by phase.
> - 1 Week Before Interview: Focus on interview questions and biggest learnings.
> - 1 Day Before Interview: Review topic summaries and common mistakes.
> - 30 Minutes Before Interview: Review the last-minute revision sections.

## Three Layer Thinking Model

For every topic try to reason in three layers:

```text
Technical Impact
        ↓
Engineering Impact
        ↓
Business Impact
```

Whenever possible ask:

- Why does this feature exist?
- What problem does it solve?
- What are the trade-offs?
- How is it used in production?
- How would AMD ask this question?
- How would I debug production failures involving this concept?

---

# Phase-1 : C++ Basics

## Interview Thinking Framework

Always try to answer questions in the following order whenever applicable:

```text
WHAT?
 ↓
WHY?
 ↓
HOW?
 ↓
BENEFITS?
 ↓
TRADE-OFFS?
 ↓
ENGINEERING IMPACT?
 ↓
BUSINESS IMPACT?
```

Do not force all seven layers into every answer. The goal is to answer exactly what was asked while thinking at the appropriate depth.
# Phase-1 : C++ Basics

- Topic-1 : Why C++ Exists
- Topic-2 : Compilation Process
- Topic-3 : Variables
- Topic-4 : Data Types
- Topic-5 : References
- Topic-6 : Pointers
- Topic-7 : Functions
- Topic-8 : Header Files
- Topic-9 : Namespaces
- Topic-10 : Classes & Objects
- Topic-11 : Constructors
- Topic-12 : Destructors
- Topic-13 : Copy Constructor
- Topic-14 : Assignment Operator
- Topic-15 : Static Members
- Topic-16 : Const Correctness

---

# Phase-2 : Object Oriented Programming

- Topic-17 : Encapsulation
- Topic-18 : Inheritance
- Topic-19 : Polymorphism
- Topic-20 : Virtual Functions
- Topic-21 : Pure Virtual Functions
- Topic-22 : Abstract Classes
- Topic-23 : Friend Classes and Functions

---

# Phase-3 : Modern C++

- Topic-24 : RAII
- Topic-25 : Smart Pointers
- Topic-26 : Move Semantics
- Topic-27 : Rvalue References
- Topic-28 : std::move
- Topic-29 : Rule of Three
- Topic-30 : Rule of Five
- Topic-31 : Rule of Zero
- Topic-32 : Templates
- Topic-33 : STL Containers
- Topic-34 : Iterators
- Topic-35 : Algorithms
- Topic-36 : Lambdas
- Topic-37 : auto
- Topic-38 : constexpr
- Topic-39 : enum class

---

# Phase-4 : Memory

- Topic-40 : Stack vs Heap
- Topic-41 : Memory Layout
- Topic-42 : Dynamic Allocation
- Topic-43 : new/delete
- Topic-44 : Memory Leaks
- Topic-45 : Dangling Pointers
- Topic-46 : Undefined Behaviour

---

# Phase-5 : Concurrency

- Topic-47 : Threads
- Topic-48 : Mutex
- Topic-49 : Locks
- Topic-50 : Condition Variables
- Topic-51 : Atomic Variables

---

# Phase-6 : Exception Handling

- Topic-52 : try/catch
- Topic-53 : noexcept
- Topic-54 : Exception Safety

---

# Phase-7 : Build Systems

- Topic-55 : CMake Basics
- Topic-56 : Static Libraries
- Topic-57 : Shared Libraries

---

# Phase-8 : Interview Preparation

---

# IMPORTANT

> This document is NOT only a roadmap.
>
> Going forward, ALL topic related discussions will be maintained in this file itself.
>
> This includes:
> - Mental Models
> - Beginner Friendly Explanations
> - Easy Examples
> - Production Examples
> - Interview Questions
> - Your Answers
> - Answer Reviews and Improvements
> - Interview Ready Answers
> - Follow-up Questions
> - Biggest Learnings
> - Senior Engineer Perspectives
> - Topic Summaries
> - Common Communication Improvements
> - AMD SMTS Perspectives
> - Systems Thinking Notes
> - Production Quality Engineering Discussions
>
> NO INFORMATION WILL BE STORED IN:
> - Topic-X.md files
> - Q&A files
> - Revision files
> - Separate interview question files
>
> CPP-INTERVIEW.md is the SINGLE SOURCE OF TRUTH for all Modern C++ interview preparation.
>
> Therefore, Topic-1, Topic-2 and all future topics will preserve our complete learning journey including the questions you answered and the improvements discussed during the course.


## Repository Philosophy

Remember:

```text
Modern C++
      +
Systems Thinking
      +
Production Thinking
      +
Build Systems Knowledge
      +
Testing and Debugging Mindset
      +
Senior Interview Communication
      +
AMD SMTS Preparation
-----------------------------
Production Quality Engineering
```

The primary goal of this repository is NOT becoming a Modern C++ specialist. The goal is becoming interview ready for Senior/SMTS level engineering roles while building strong production-quality engineering mental models.

# Topic Template

Every topic in this document will follow the same structure:

1. Mental Model
2. Why does this concept exist?
3. Beginner Friendly Explanation
4. Java Comparison (if applicable)
5. Easy Examples
6. Production Examples
7. Common Mistakes
8. Interview Questions
9. Your Answers
10. Answer Review and Improvements
11. Interview Ready Answers
12. Follow-up Interview Questions
13. Small Coding Exercise (if applicable)
14. Biggest Learnings
15. Senior Engineer Perspective
16. Topic Summary

> Notes:
> - Every interview question will remain with its respective topic.
> - Your answers, answer reviews, and interview-ready answers will be preserved for revision.
> - No separate global question bank or Q&A files will be maintained.
> - Easy examples are preferred over complex examples unless required.
> - Production examples will be introduced only when they improve understanding.
> - Mental models, systems thinking, and interview communication are as important as syntax.
> - The goal is Senior Modern C++ interview preparation, not exhaustive language coverage.
> - CPP-INTERVIEW.md is the single source of truth for all Modern C++ interview preparation.
