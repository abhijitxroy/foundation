# Git Assistant

## Objective

Extend the Local AI Code Assistant with Git awareness, enabling repository analysis, commit assistance, branch inspection, pull request support, and code review while keeping all source code private.

The assistant should:

- Work completely offline after setup
- Understand Git repositories
- Analyze commits
- Generate commit messages
- Summarize changes
- Assist with code reviews
- Help resolve merge conflicts

---

# Problem Statement

Developers spend considerable time performing Git-related tasks:

- Reviewing commits
- Understanding code changes
- Writing commit messages
- Preparing pull requests
- Investigating repository history
- Resolving merge conflicts

A Local AI Git Assistant can automate these activities while ensuring source code never leaves the local machine.

---

# Solution

Extend the existing Local AI platform by integrating Git through Tool Calling and MCP.

The assistant gains repository awareness and can execute Git operations while using the LLM for reasoning.

---

# Architecture

```text
                 Developer

                     │

                     ▼

               Open WebUI

                     │

                     ▼

                  Ollama

                     │

                     ▼

                   Qwen

        ┌────────────┼────────────┐

        ▼            ▼            ▼

      Memory       RAG      Tool Calling

                                 │

                                 ▼

                             MCP Client

                                 │

                                 ▼

                             Git Server

                                 │

                                 ▼

                         Local Repository
```

---

# Components

| Component | Purpose |
|-----------|---------|
| Open WebUI | Chat Interface |
| Ollama | LLM Runtime |
| Qwen | Repository Reasoning |
| Git | Version Control |
| Tool Calling | Execute Git commands |
| MCP | Standardized tool communication |
| RAG | Repository search |

---

# Supported Git Operations

The assistant can help with:

- Repository overview
- Branch listing
- Commit history
- Commit explanation
- Commit message generation
- File history
- Change summary
- Pull request preparation
- Merge conflict guidance
- Code review

---

# Example Queries

```
Summarize yesterday's commits.
```

```
Generate a commit message for my staged changes.
```

```
Explain this merge conflict.
```

```
Which files changed in the last commit?
```

```
Summarize the current branch.
```

```
Review this pull request.
```

---

# Workflow

```text
Developer

     │

     ▼

Ask Question

     │

     ▼

Determine Git Operation

     │

     ▼

Execute Git Tool

     │

     ▼

Retrieve Repository Data

     │

     ▼

LLM Analysis

     │

     ▼

Generate Response
```

---

# Project Structure

```text
git-assistant/

├── repository/
├── prompts/
├── scripts/
├── config/
├── logs/
└── app/
```

---

# Implementation Steps

1. Connect the assistant to a Git repository.
2. Enable Git Tool Calling.
3. Configure MCP (optional but recommended).
4. Retrieve repository metadata.
5. Generate repository summaries.
6. Analyze commits.
7. Test common Git workflows.

---

# Verification

Verify that the assistant can:

- Detect the current branch.
- List commits.
- Explain commit history.
- Generate commit messages.
- Summarize repository changes.
- Review code modifications.

---

# Expected Features

- Repository awareness
- Commit summarization
- AI-generated commit messages
- Branch analysis
- Change tracking
- Offline operation

---

# Limitations

- Requires access to a local Git repository.
- Cannot interpret changes outside the repository.
- Repository quality affects analysis quality.

---

# Future Enhancements

The next project will add document intelligence through PDF analysis, allowing the assistant to work with technical documentation alongside source code.

---

# Project Deliverables

By the end of this project, you will have:

- An AI-powered Git Assistant
- Automated repository analysis
- Intelligent commit assistance
- Offline repository insights

---

# Summary

This project upgrades the Local AI platform with Git awareness, enabling intelligent repository analysis and developer workflow automation while maintaining complete privacy.

---

# Next

Continue with **05-pdf-chat.md**.
