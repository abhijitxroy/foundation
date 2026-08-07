# Model Context Protocol (MCP)

## Objective

Understand what the Model Context Protocol (MCP) is, why it is used, how it works, and its role in a Local AI platform.

---

# What is MCP?

Model Context Protocol (MCP) is an open standard that enables Large Language Models (LLMs) to securely communicate with external tools, services, and data sources.

Instead of creating custom integrations for every tool, MCP provides a standardized communication protocol.

It can be thought of as **"USB-C for AI applications."**

---

# Why MCP?

Without MCP, every AI application must implement custom integrations.

Example:

```
LLM

↓

Git

↓

Custom Integration
```

```
LLM

↓

Database

↓

Custom Integration
```

```
LLM

↓

Filesystem

↓

Custom Integration
```

Each integration is developed independently.

MCP replaces these with a common protocol.

---

# Traditional Integration

```text
             LLM

      ┌──────┼──────┐

      ▼      ▼      ▼

    Git    SQL    Files

   Custom Custom Custom

 Integration Integration Integration
```

---

# MCP Integration

```text
             LLM

               │

               ▼

        MCP Client

               │

               ▼

        MCP Protocol

               │

      ┌────────┼────────┐

      ▼        ▼        ▼

 Git Server  SQL Server  File Server
```

Only one protocol is required.

---

# MCP Architecture

```text
             User

               │

               ▼

              LLM

               │

               ▼

          MCP Client

               │

       Model Context Protocol

               │

      ┌────────┼─────────┐

      ▼        ▼         ▼

   Git MCP   File MCP   Database MCP

      │        │         │

      ▼        ▼         ▼

    Git      Files     Database
```

---

# Components

An MCP system consists of:

- LLM
- MCP Client
- MCP Server
- External Tool
- User

---

# MCP Client

The MCP Client runs inside the AI application.

Responsibilities:

- Connect to MCP servers
- Discover available tools
- Send requests
- Receive responses

Examples:

- Claude Desktop
- Open WebUI
- VS Code extensions
- Custom AI applications

---

# MCP Server

The MCP Server exposes tools and data through the MCP protocol.

Examples:

- Git MCP Server
- Filesystem MCP Server
- SQLite MCP Server
- PostgreSQL MCP Server
- GitHub MCP Server

---

# Workflow

```text
User

 │

 ▼

Prompt

 │

 ▼

LLM

 │

 ▼

MCP Client

 │

 ▼

MCP Server

 │

 ▼

External Tool

 │

 ▼

Result

 │

 ▼

LLM

 │

 ▼

Final Response
```

---

# Common MCP Servers

Examples include:

- Filesystem
- Git
- GitHub
- SQLite
- PostgreSQL
- Docker
- Kubernetes
- Slack
- Google Drive
- Web Browser

---

# Example

User:

```
Summarize all Markdown files in this project.
```

Workflow:

```
LLM

↓

Filesystem MCP Server

↓

Read Markdown Files

↓

Return Content

↓

LLM Summary
```

---

# Advantages

- Standard protocol
- Reusable integrations
- Easier maintenance
- Improved interoperability
- Better security boundaries
- Works across multiple AI applications

---

# Limitations

- Requires MCP-compatible clients and servers.
- Tool availability depends on installed MCP servers.
- Additional configuration may be required.
- Performance depends on the underlying tools.

---

# MCP vs Tool Calling

| Tool Calling | MCP |
|---------------|-----|
| Capability | Protocol |
| Decides when to use tools | Standardizes how tools communicate |
| Can work without MCP | Often used by Tool Calling |
| Focuses on execution | Focuses on interoperability |

Tool Calling answers:

> **"What tool should I use?"**

MCP answers:

> **"How do I communicate with that tool?"**

---

# Security

Best practices:

- Grant minimum required permissions.
- Authenticate MCP clients.
- Restrict access to sensitive resources.
- Log requests and responses.
- Validate all inputs.
- Keep MCP servers updated.

---

# Local AI Integration

```text
             Open WebUI

                  │

                  ▼

               Ollama

                  │

                  ▼

                 LLM

                  │

                  ▼

             MCP Client

                  │

          Model Context Protocol

        ┌─────────┼─────────┐

        ▼         ▼         ▼

   Git Server  SQLite  Filesystem
```

---

# Best Practices

- Use official MCP servers where possible.
- Keep each server focused on a single responsibility.
- Avoid exposing unnecessary tools.
- Apply least-privilege access.
- Monitor and log MCP activity.

---

# Summary

- MCP is an open standard for connecting AI models to external tools.
- It replaces custom integrations with a common protocol.
- MCP separates communication from tool implementation.
- It enables interoperable, secure, and reusable AI integrations.
- MCP is a foundational technology for modern AI assistants and agentic systems.

---

# Next

Continue with **10-agents.md**.
