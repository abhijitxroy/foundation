# Foundation Documentation Style Guide

## Purpose

This guide defines the documentation standards used throughout the Foundation repository. Every module and note should follow these conventions to maintain consistency, readability, and long-term maintainability.

---

# Repository Structure

Each engineering module should follow this layout:

```text
module/
├── README.md
├── ROADMAP.md
├── TODO.md
└── topic-notes...
```

---

# README Structure

Every README should contain the following sections:

1. Overview
2. Scope
3. Learning Objectives
4. Learning Path
5. Guiding Principles
6. Relationship to Other Domains
7. Purpose

---

# Technical Note Structure

Every standard topic should follow this order:

1. Overview
2. Definition
3. Objectives
4. Core Concepts
5. Architecture / Workflow
6. Types / Components (when applicable)
7. Benefits
8. Best Practices
9. Common Mistakes
10. Interview Focus
11. Related Topics
12. Key Takeaways
13. Next

---

# Final Chapter Structure

The final chapter of a module (for example, Enterprise topics) should replace **Key Takeaways** and **Next** with:

- Conclusion

---

# AI Notes

AI learning notes should use:

- Quick Revision
- Next

instead of Key Takeaways.

---

# Books

Book notes should include:

- Quick Revision

---

# Markdown Standards

- Use ATX headings (`#`, `##`, `###`).
- Use sentence case for headings.
- Keep paragraphs concise.
- Prefer bullet lists over long prose.
- Use Markdown tables for comparisons.
- Use fenced code blocks with language identifiers where appropriate.
- Use plain text diagrams for simple workflows.

---

# Naming Conventions

## Files

- Use lowercase.
- Use hyphens (`-`) between words.
- Avoid spaces.

Example:

```text
system-design-foundations.md
```

## Directories

- Use lowercase.
- Use descriptive names.

Example:

```text
platform-engineering
cloud
security
```

---

# Diagrams

Prefer simple ASCII diagrams.

Example:

```text
Developer
     │
     ▼
CI/CD
     │
     ▼
Production
```

---

# Writing Style

- Be vendor-neutral unless discussing a specific technology.
- Explain concepts before tools.
- Focus on engineering principles.
- Prefer clarity over completeness.
- Avoid unnecessary jargon.
- Keep examples practical.

---

# Documentation Philosophy

Concepts → Practice → Production → Mastery
