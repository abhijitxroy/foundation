# HTML Knowledge Guide — Standard Template Instruction

## Purpose

Create a **single, self-contained HTML knowledge guide** for the requested topic.

The guide is intended for long-term learning and future reference. It should not be a simple article or summary. It should feel like a **personal interactive knowledge book**.

The content should be:

* Comprehensive
* Well organized
* Easy to understand
* Written in simple, clean English
* Visual-learning-first
* Practical where applicable
* Useful for interview / KT preparation
* Suitable for future revision

---

# 1. HTML DESIGN — MUST FOLLOW

Use this exact overall UI pattern for every topic unless explicitly instructed otherwise.

## Layout

Use:

```text
┌──────────────────────┬────────────────────────────────────────────┐
│                      │                                            │
│   FIXED VERTICAL     │                 MAIN CONTENT               │
│   LEFT NAVIGATION    │                                            │
│                      │                                            │
│   Topic              │   Hero section                             │
│   ├─ Section 1       │                                            │
│   ├─ Section 2       │   Cards / diagrams / tables                │
│   ├─ Section 3       │                                            │
│   ├─ Section 4       │                                            │
│   └─ ...             │                                            │
│                      │                                            │
└──────────────────────┴────────────────────────────────────────────┘
```

Use:

* Fixed dark vertical sidebar
* Main content area
* Tab/button navigation
* One content `<section>` per tab
* Responsive layout for smaller screens
* Clean modern typography
* Rounded cards
* Subtle borders and shadows
* Hero sections with gradients
* Dark monospace architecture/diagram blocks

---

# 2. NAVIGATION

Create a fixed vertical navigation sidebar.

Example:

```html
<aside class="side">
  <div class="brand">
    Knowledge Guide
    <span>Short description</span>
  </div>

  <div class="group">FOUNDATIONS</div>

  <button class="tab active" data-page="start">
    00 · Start Here
  </button>

  <button class="tab" data-page="fundamentals">
    01 · Fundamentals
  </button>

  ...
</aside>
```

Organize navigation into logical groups.

Example:

```text
START
  Start Here
  Learning Map

FOUNDATIONS
  Fundamentals
  Core Concepts
  Architecture

DEEP DIVE
  Advanced Concepts
  Internals
  Design

PRACTICAL
  Labs
  Debugging
  Examples

REFERENCE
  Interview / KT
  Glossary
  Quick Revision
  Knowledge Check
  Coverage Audit
  Sources
```

Number sections sequentially.

---

# 3. PAGE STRUCTURE

Every major section should be a separate page/tab:

```html
<section id="fundamentals" class="page">
   ...
</section>
```

Only one page should be visible at a time.

Use JavaScript to:

* Switch tabs
* Highlight active tab
* Update URL hash
* Restore the selected tab when the page is reopened

Example:

```text
#fundamentals
#architecture
#internals
```

---

# 4. START HERE

The first page should explain:

### What is this topic?

### Why should I learn it?

### What will I understand after completing this guide?

### How to use this guide?

Give the reader a mental model before going into details.

Include a high-level diagram.

Example:

```text
FOUNDATION
    ↓
CORE CONCEPT
    ↓
ARCHITECTURE
    ↓
INTERNALS
    ↓
PRACTICAL USE
    ↓
DEBUGGING
    ↓
INTERVIEW / KT
    ↓
REVISION
```

---

# 5. LEARNING MAP

Create a visual learning roadmap.

Example:

```text
01 Fundamentals
       ↓
02 Core Concepts
       ↓
03 Architecture
       ↓
04 Components
       ↓
05 How It Works
       ↓
06 Real-World Usage
       ↓
07 Debugging
       ↓
08 Practical Lab
       ↓
09 Interview / KT
```

Explain the dependency between sections.

The reader should understand **why the next topic comes after the previous topic**.

---

# 6. EXPLANATION STYLE

Use:

## Simple English

Avoid unnecessary academic language.

When technical terminology is necessary:

1. Give the technical term.
2. Explain it in simple English.
3. Give an example.
4. Show a diagram where useful.

Example:

> **Cache:** a small, fast memory close to the processor that keeps frequently used data so the CPU does not need to fetch it from slower memory every time.

---

# 7. VISUAL-FIRST EXPLANATION

Use diagrams extensively.

Prefer simple ASCII architecture diagrams inside:

```html
<div class="arch">
...
</div>
```

Example:

```text
APPLICATION
     ↓
RUNTIME
     ↓
OPERATING SYSTEM
     ↓
DRIVER
     ↓
HARDWARE
```

For complex systems, show:

* Components
* Data flow
* Control flow
* Dependencies
* Inputs
* Outputs
* Interfaces

Do not use diagrams merely for decoration.

A diagram should explain something.

---

# 8. CARDS

Use cards for independent concepts.

Example:

```html
<div class="grid">

  <div class="card">
    <h3>Concept A</h3>
    <p>Explanation...</p>
  </div>

  <div class="card">
    <h3>Concept B</h3>
    <p>Explanation...</p>
  </div>

</div>
```

Use cards for:

* Concepts
* Components
* Technologies
* Tools
* Companies
* Practical examples
* Key takeaways

---

# 9. TABLES

Use tables whenever comparison makes the information easier to understand.

Example:

| Concept | Meaning | Why Important | Example |
| ------- | ------- | ------------- | ------- |
| A       | ...     | ...           | ...     |
| B       | ...     | ...           | ...     |

Good table use cases:

* Compare technologies
* Compare components
* Historical timeline
* Tools
* Protocols
* Architecture layers
* Advantages / disadvantages
* Industry roles

Avoid excessively wide tables.

---

# 10. INFORMATION CALLOUTS

Use these styles:

### WHY

For explaining why something exists.

```html
<div class="why">
  <b>Why?</b> ...
</div>
```

### NOTE

For important clarification.

```html
<div class="note">
  <b>Note:</b> ...
</div>
```

### WARNING

For misconceptions, limitations or dangerous operations.

```html
<div class="warn">
  <b>Important:</b> ...
</div>
```

### GOOD / KEY TAKEAWAY

For important conclusions.

```html
<div class="good">
  <b>Key takeaway:</b> ...
</div>
```

---

# 11. HISTORY

If the topic has historical development, include a timeline.

Explain:

* When
* Where
* Who
* What happened
* Why it mattered
* What came next

Do not blindly claim something was the "first" if historical definitions are ambiguous.

Instead explain the definition.

Example:

```text
EARLY TECHNOLOGY
      ↓
BREAKTHROUGH
      ↓
IMPROVEMENT
      ↓
COMMERCIALIZATION
      ↓
MODERN TECHNOLOGY
```

---

# 12. "HOW IT WORKS"

Every technical topic should have a section explaining the internal flow.

Use:

```text
INPUT
  ↓
PROCESSING
  ↓
TRANSFORMATION
  ↓
OUTPUT
```

For systems:

```text
USER
 ↓
APPLICATION
 ↓
RUNTIME
 ↓
OS
 ↓
DRIVER
 ↓
HARDWARE
 ↓
PHYSICAL WORLD
```

Explain each layer separately.

---

# 13. REAL-WORLD CONNECTION

Always connect theory to something people actually use.

Explain:

> "Where do I see this in real life?"

Examples:

* Laptop
* Smartphone
* Cloud
* Data center
* Car
* Wi-Fi router
* GPU
* IoT device
* Industrial system

---

# 14. INDUSTRY / COMPANY ECOSYSTEM

If applicable, explain:

* Who designs it
* Who manufactures it
* Who supplies components
* Who provides software
* Who provides standards
* Who tests it
* Who integrates it

Use a diagram:

```text
IP / TECHNOLOGY
       ↓
DESIGN
       ↓
EDA / TOOLS
       ↓
MANUFACTURING
       ↓
PACKAGING
       ↓
TESTING
       ↓
SYSTEM
       ↓
CUSTOMER
```

Do not imply that one company does everything unless that is actually true.

---

# 15. PRACTICAL / DIY

If the topic allows practical experimentation, include a:

## DIY Lab

Explain:

* Required hardware/software
* Setup
* Commands
* Steps
* Expected output
* What the experiment demonstrates
* Troubleshooting

Prefer safe, legal, low-cost experiments.

Example:

```text
LAB
 ↓
SETUP
 ↓
RUN
 ↓
OBSERVE
 ↓
UNDERSTAND
```

---

# 16. DEBUGGING

For engineering topics, include a debugging section.

Use:

```text
SYMPTOM
   ↓
REPRODUCE
   ↓
EXPECTED BEHAVIOR
   ↓
IDENTIFY LAYER
   ↓
COLLECT EVIDENCE
   ↓
FORM HYPOTHESIS
   ↓
CHANGE ONE THING
   ↓
RETEST
   ↓
ROOT CAUSE
   ↓
FIX
```

Explain practical debugging commands/tools when relevant.

---

# 17. INTERVIEW / KT Q&A

Include a dedicated section.

Questions should progress from:

### Beginner

"What is X?"

### Intermediate

"How does X work?"

### Advanced

"Why is X designed this way?"

### Engineering

"How would you debug X?"

### Architecture

"What are the trade-offs?"

Answers should be concise enough to speak during an interview or knowledge-sharing session.

---

# 18. GLOSSARY

Include important terminology.

Use:

| Term   | Simple Definition  |
| ------ | ------------------ |
| Term A | Simple explanation |
| Term B | Simple explanation |

Avoid unexplained acronyms.

When an acronym first appears, write:

> Electronic Design Automation (EDA)

Then use EDA afterward.

---

# 19. QUICK REVISION

Create a short revision page.

Include the most important chains.

Example:

```text
SOURCE
 ↓
PROCESS
 ↓
COMPONENT
 ↓
SYSTEM
 ↓
APPLICATION
```

The reader should be able to review the entire topic in approximately 5–10 minutes.

---

# 20. KNOWLEDGE CHECK

Create questions that test understanding rather than memorization.

Example:

1. Why does X exist?
2. What happens if X fails?
3. What is the difference between X and Y?
4. How does X communicate with Y?
5. Where is X used?
6. How would you debug X?

Include answers after the questions.

---

# 21. COVERAGE AUDIT

Always include a final coverage audit.

Example:

| Requested Topic | Covered? | Section        |
| --------------- | -------- | -------------- |
| Fundamentals    | Yes      | Fundamentals   |
| Architecture    | Yes      | Architecture   |
| Practical       | Yes      | DIY Labs       |
| Debugging       | Yes      | Debugging      |
| Interview       | Yes      | Interview / KT |

This is important because the guide should not silently miss items from the original request.

---

# 22. SOURCES & SCOPE

Include a final source section.

Separate:

* User-provided material
* Official documentation
* External research
* General background knowledge

If information is uncertain, historical or definition-dependent, explicitly say so.

Do not invent sources.

For current information, prefer official sources.

---

# 23. FACTUAL ACCURACY

Do NOT blindly copy supplied material.

If supplied content contains:

* oversimplifications
* technically incorrect statements
* ambiguous historical claims
* outdated information
* misleading terminology

preserve the useful idea but correct the explanation.

Clearly distinguish:

```text
SOURCE CONTENT
     ↓
VERIFIED FACT
     ↓
EXPLANATION
```

When research is required, verify important claims using authoritative sources.

---

# 24. DO NOT OVER-SIMPLIFY

Simple English does NOT mean technically incorrect English.

For example, avoid statements such as:

> "A semiconductor is exactly halfway between a conductor and insulator."

Prefer:

> "A semiconductor has electrical properties that can be engineered and controlled, especially its carrier concentration."

Similarly:

Do not say:

> "A tiny voltage turns silicon into a conductor."

Explain the actual mechanism:

> "In a MOSFET, the electric field produced by the gate changes the carrier concentration in the channel, controlling current between source and drain."

---

# 25. CONTENT DEPTH

The guide should be **comprehensive but layered**.

Use:

```text
LEVEL 1
Simple explanation
      ↓
LEVEL 2
Technical explanation
      ↓
LEVEL 3
Architecture / internals
      ↓
LEVEL 4
Engineering / practical
```

A beginner should be able to follow it.

An engineer should still find useful technical depth.

---

# 26. SINGLE-FILE REQUIREMENT

Create exactly **one self-contained HTML file**.

Do not require:

* React
* Node.js
* npm
* build tools
* external CSS
* external JavaScript
* external frameworks

Prefer:

```text
HTML
+ CSS
+ JavaScript
= ONE FILE
```

The file should work by opening it directly in a browser.

---

# 27. DESIGN LANGUAGE

Use a clean visual language:

* Dark vertical navigation
* White/light main content
* Blue/indigo/cyan accent colors
* Rounded cards
* Subtle shadows
* Clean tables
* Dark architecture diagrams
* Responsive mobile layout

Do not make the page visually noisy.

The purpose is **learning**, not decoration.

---

# 28. FINAL QUALITY CHECK

Before producing the HTML, verify:

* [ ] Topic has a clear learning journey
* [ ] Start Here exists
* [ ] Learning Map exists
* [ ] Fundamentals are explained
* [ ] Architecture is explained
* [ ] Important terminology is defined
* [ ] Visual diagrams are included
* [ ] Tables are used where useful
* [ ] Real-world examples exist
* [ ] Practical lab exists where applicable
* [ ] Debugging exists where applicable
* [ ] Interview / KT Q&A exists
* [ ] Glossary exists
* [ ] Quick Revision exists
* [ ] Knowledge Check exists
* [ ] Coverage Audit exists
* [ ] Sources & Scope exists
* [ ] No major requested topic is missing
* [ ] No unsupported claims are presented as facts
* [ ] Historical "first" claims are properly qualified
* [ ] Technical explanations are simple but accurate
* [ ] HTML works as a standalone file
* [ ] Navigation works
* [ ] URL hash navigation works
* [ ] Responsive layout works

---

# GOLDEN RULE

Do not create a generic article.

Create a **complete interactive knowledge guide**.

The reader should be able to go from:

```text
"I know almost nothing about this"
             ↓
        FUNDAMENTALS
             ↓
      HOW IT WORKS
             ↓
        ARCHITECTURE
             ↓
        REAL WORLD
             ↓
      PRACTICAL LAB
             ↓
       DEBUGGING
             ↓
       INTERVIEW / KT
             ↓
        QUICK REVISION
```

The final result should feel like a **well-organized personal engineering textbook in one HTML file**.

If the topic is broad, first create the learning architecture and then fill each section. Do not dump unrelated information into one page.
