# Tool Calling

## Objective

Understand what Tool Calling is, why it is used, how it works, and its role in a Local AI platform.

---

# What is Tool Calling?

Tool Calling is the ability of a Large Language Model (LLM) to invoke external tools or applications to perform tasks beyond text generation.

Instead of only generating responses, the LLM can execute actions such as:

- Run Python code
- Execute shell commands
- Search local files
- Query databases
- Access Git repositories
- Call REST APIs
- Read PDFs
- Perform calculations

The LLM decides **when** a tool is needed, while the actual execution is performed by the application hosting the LLM.

---

# Why Tool Calling?

LLMs are limited to reasoning over the information available in the prompt and their trained knowledge.

They cannot:

- Execute code
- Read your local files
- Access live data
- Interact with operating systems
- Query databases

Tool Calling extends the capabilities of an LLM by allowing it to interact with external systems.

---

# Architecture

```text
                User

                  │

                  ▼

                 LLM

                  │

         Need External Tool?

          Yes            No

           │              │

           ▼              ▼

     Tool Selection    Generate Response

           │

           ▼

     Execute Tool

           │

           ▼

      Tool Output

           │

           ▼

      Generate Answer
```

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

Determine Tool

 │

 ▼

Execute Tool

 │

 ▼

Receive Result

 │

 ▼

Generate Final Response
```

---

# Common Tools

Examples include:

- Python
- Shell
- Git
- File System
- SQLite
- PostgreSQL
- Docker
- Kubernetes
- REST APIs
- Web Search
- PDF Reader
- CSV Reader

---

# Example 1

User:

```
Show all Python files in my project.
```

Tool Used:

```
File System
```

---

# Example 2

User:

```
Run this Python script.
```

Tool Used:

```
Python
```

---

# Example 3

User:

```
Show Git branches.
```

Tool Used:

```
Git
```

---

# Example 4

User:

```
Find TODO comments.
```

Tool Used:

```
File Search
```

---

# Example 5

User:

```
Summarize this PDF.
```

Tool Used:

```
PDF Reader
```

---

# Tool Selection

The LLM determines whether a tool is required.

Example:

```
Question:

What is RAII?
```

No tool required.

---

```
Question:

Show all C++ files in this directory.
```

Tool required.

---

# Tool Execution

The LLM **does not execute tools directly**.

Instead:

1. The LLM identifies the required tool.
2. The host application invokes the tool.
3. The tool returns structured output.
4. The LLM uses that output to generate the final response.

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

        ┌─────────┼──────────┐

        ▼         ▼          ▼

      Python     Git      File System

        │         │          │

        └─────────┼──────────┘

                  ▼

           Final Response
```

---

# Advantages

- Executes real tasks
- Accesses local resources
- Supports automation
- Extends LLM capabilities
- Enables AI assistants
- Works offline

---

# Limitations

- Tools require proper permissions.
- Incorrect tool output can produce incorrect responses.
- Poor tool design affects reliability.
- Long-running tools increase response time.

---

# Security Considerations

Tool Calling can execute powerful operations.

Best practices:

- Follow the principle of least privilege.
- Restrict file system access.
- Validate tool inputs.
- Confirm destructive operations.
- Log tool execution.
- Never expose sensitive credentials.

---

# Tool Calling vs Function Calling

| Tool Calling | Function Calling |
|---------------|------------------|
| General concept | Specific implementation |
| Can invoke any external tool | Calls predefined functions |
| May execute scripts or programs | Calls structured APIs |
| Used by AI assistants | Used by LLM frameworks |

Function Calling is one implementation of Tool Calling.

---

# Tool Calling vs MCP

| Tool Calling | MCP |
|---------------|-----|
| Invokes tools | Standardizes tool communication |
| Focuses on execution | Focuses on interoperability |
| Can work without MCP | Often used together with Tool Calling |

MCP provides a standardized protocol for connecting tools, while Tool Calling is the capability of using those tools.

---

# Best Practices

- Keep tools focused on a single responsibility.
- Return structured output.
- Handle failures gracefully.
- Validate all user input.
- Log tool execution.
- Limit tool permissions.

---

# Summary

- Tool Calling allows an LLM to interact with external systems.
- The LLM decides **what** tool is needed.
- The host application executes the tool.
- Tool results are incorporated into the final response.
- Tool Calling transforms an LLM into a practical AI assistant.

---

# Next

Continue with **09-mcp.md**.
