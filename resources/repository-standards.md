# Repository Standards

## Purpose

This document defines the common standards used across the Personal Knowledge Ecosystem (PKE). These standards ensure consistency, maintainability, scalability, and interoperability between repositories.

The standards apply to the following repositories:

- `foundation`
- `books`
- `india`
- Future repositories within the ecosystem

---

# Core Principles

1. Single Source of Truth
   - Information should exist in only one repository.
   - Repositories should reference each other rather than duplicate content.

2. Preserve Before Rewriting
   - Existing knowledge is reviewed before modification.
   - Improve and extend content instead of replacing it whenever possible.

3. Long-Term Maintainability
   - Prefer structures that remain understandable for many years.

4. Scalability
   - Repository organization should support growth from dozens to thousands of documents.

---

# Repository Responsibilities

| Repository | Responsibility |
|------------|----------------|
| foundation | Knowledge management, methodologies, standards, templates, learning, governance |
| books | Private digital library and source materials |
| india | Research, history, documentary knowledge, biographies, timelines |

---

# Naming Standards

## Repository Names

- Use lowercase.
- Use short, descriptive names.
- Prefer single-word names where practical.

## Folder Names

- lowercase
- hyphen-separated
- Use numbering only when order is meaningful.

Examples:

- `tech/`
- `application-architecture/`
- `01-foundations/`

## File Names

- lowercase
- hyphen-separated
- descriptive

Examples:

- `timeline.md`
- `repository-standards.md`
- `book-note-template.md`

---

# Documentation Standards

Each repository should include, where applicable:

- `README.md`
- `ROADMAP.md`
- `CHANGELOG.md`
- `TODO.md`
- `LICENSE`

README files provide navigation and context rather than exhaustive documentation.

---

# Cross-Repository Principles

Knowledge should flow through the ecosystem as:

```text
books
   ↓
india
   ↓
foundation
```

Source Material → Research → Refined Knowledge

Repositories should link to related information instead of duplicating it.

---

# Documentation Lifecycle

For existing documents:

- Preserve
- Review
- Improve
- Extend
- Standardize

Avoid deleting existing knowledge unless it is obsolete or intentionally removed.

---

# Future Revisions

This document is expected to evolve as the Personal Knowledge Ecosystem grows. Changes should preserve compatibility with the established architecture whenever practical.
