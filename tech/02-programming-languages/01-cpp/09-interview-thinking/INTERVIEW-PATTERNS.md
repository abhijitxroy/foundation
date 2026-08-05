# Modern C++ - Interview Patterns

> This file captures reusable interview patterns and senior-level thinking models. It is intentionally independent of individual topics.

---

## Pattern 1 - Never Start With the Technology

Prefer:

```text
Problem
 ↓
Requirements
 ↓
Constraints
 ↓
Trade-offs
 ↓
Technology Selection
 ↓
Why that choice was made
```

Avoid:

```text
Java is better.

C++ is better.
```

Prefer:

```text
Java is better suited for ...

C++ is better suited for ...

Depends on the requirements and trade-offs.
```

---

## Pattern 2 - Senior-Level Thinking

Always ask:

```text
Why does it exist?
      ↓
What problem does it solve?
      ↓
Why was this design chosen?
      ↓
What are the trade-offs?
      ↓
How is it used in production?
```

---

## Pattern 3 - Learn Mental Models, Not Definitions

Avoid:

```text
57 Topics
 ↓
57 Definitions
```

Prefer:

```text
57 Topics
 ↓
15-20 Mental Models
 ↓
Everything Connected
 ↓
Easy Recall
```

---

## Pattern 4 - Object Lifetime Thinking

```text
Object Created?
 ↓
Constructor
 ↓
Copied?
 ↓
Copy Constructor
 ↓
Assigned?
 ↓
Assignment Operator
 ↓
Destroyed?
 ↓
Destructor
```

Later topics such as:

- RAII
- Smart Pointers
- Move Semantics
- Rule of Five
- Rule of Zero

will extend this mental model.

---

## Pattern 5 - Object Behaviour Thinking

Ask:

```text
Who owns this information?
      ↓
Object?
      ↓
Normal Member

OR

Entire Class?
      ↓
Static Member
```

Ask:

```text
Should this change?
      ↓
NO
      ↓
Use const.
```

---

## Pattern 6 - Answer Interview Questions Simply

Always answer three questions:

```text
What is it?
      ↓
Why does it exist?
      ↓
What should I remember?
```

Example:

```text
Pointer
--------
What is it?
- Stores memory addresses.

Why?
- Memory management.

Remember?
- &
- *
- Can be NULL.
```

---

## Pattern 7 - Production Thinking

Always think:

```text
Interview Concept
       ↓
Production Usage
       ↓
Design Decisions
       ↓
Trade-offs
       ↓
Maintainability
```

We are learning Modern C++ for:

- Production systems.
- Platform engineering.
- Debugging.
- GoogleTest.
- Build systems.
- AMD SMTS interviews.

---

## Pattern 8 - Three Layers of Thinking

Whenever an interviewer asks "WHY?", think in three layers:

```text
Technical Impact
       ↓
Engineering Impact
       ↓
Business Impact
```

Examples:

```text
Build Performance
       ↓
Incremental Builds
       ↓
Developer Productivity
       ↓
CI/CD Performance
       ↓
Release Velocity
       ↓
Infrastructure Cost
       ↓
Engineering Efficiency
```

Avoid stopping at:

```text
HOW does it work?
```

Prefer:

```text
WHY does it matter?
       ↓
Technical Impact
       ↓
Engineering Impact
       ↓
Business Impact
```

---

## Pattern 9 - Responsibility Thinking

For every concept ask:

```text
Who owns this responsibility?
       ↓
Who performs this work?
       ↓
Who reports the error?
       ↓
Who is NOT responsible?
```

Examples:

- Preprocessor → preprocessing.
- Compiler → syntax checking, type checking and compilation.
- Assembler → object file generation.
- Linker → symbol resolution and executable generation.
- Operating System → program execution.

Remember:

> Every component should have a clearly defined responsibility.

---

## Pattern 10 - Question Accuracy

Before answering ask:

```text
How many questions were asked?
       ↓
WHO?
       ↓
WHY?
       ↓
HOW?
       ↓
Answer ALL of them.
```

Avoid:

```text
Answering 50% of the question.
```

Prefer:

```text
Accurate
       ↓
Focused
       ↓
Complete
```

---

## Pattern 11 - Depth vs Breadth Thinking

Senior engineers usually think in both dimensions.

```text
DEPTH
-----
Understand one concept deeply.

+

BREADTH
-------
Understand its impact on:
- Developers
- Testing
- CI/CD
- Releases
- Maintainability
- Production Systems
```

Always ask:

```text
WHAT?
 ↓
WHY?
 ↓
HOW?
 ↓
BENEFITS?
 ↓
ENGINEERING IMPACT?
 ↓
BUSINESS IMPACT?
```

---

## Pattern 12 - Senior Interview Communication

Prefer:

```text
Short
 ↓
Focused
 ↓
Correct
 ↓
Precise
```

Avoid:

```text
Longer answers.
```

Senior-level answers are usually:

```text
Requirement
 ↓
Problem
 ↓
Trade-offs
 ↓
Solution
 ↓
Engineering Impact
```

Remember:

> Better answers are more valuable than longer answers.

---

## Repository Philosophy

```text
Easy
 ↓
Layered
 ↓
Connected
 ↓
Memorable
 ↓
Interview Ready
```

Remember:

> Learn concepts. Do not memorize definitions.

---

## Pattern 13 - Quick Revision Template

The same quick revision template should be used throughout the repository whenever applicable.

```text
LAST MINUTE REVISION
-------------------

1. Mental Model (30 Seconds)
- What should I visualize?

2. Why? (30 Seconds)
- Why does this concept exist?
- What problem does it solve?

3. Five Most Important Points
- Point-1
- Point-2
- Point-3
- Point-4
- Point-5

4. Five Most Asked Interview Questions
- Q1.
- Q2.
- Q3.
- Q4.
- Q5.

5. Interview Ready Answers
- 2-5 line ideal answers only.

6. Common Mistakes
- Biggest conceptual mistakes.
- Biggest terminology mistakes.
- Biggest communication mistakes.

7. Production Perspective
- Where is this used in production?
- Why should a senior engineer care?

8. Senior Engineer Perspective
- Requirements
- Trade-offs
- Engineering Impact
- Business Impact (if applicable)

9. Topic Summary (1 Minute)
- What should I never forget?
```

### Revision Strategy

```text
30 Minutes Before Interview
--------------------------
Read ONLY:
- Mental Model
- Five Most Important Points
- Interview Ready Answers
- Topic Summary


1 Day Before Interview
---------------------
Read:
- Last Minute Revision
- Common Mistakes
- Production Perspective
- Senior Engineer Perspective


1 Week Before Interview
----------------------
Read:
- Complete Topic Notes.
```

Remember:

> Preserve the complete learning journey, but optimize revision around mental models, interview-ready answers, and the most important learnings.