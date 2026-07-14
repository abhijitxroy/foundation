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