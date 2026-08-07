# Memory

## Objective

Understand what AI Memory is, why it is used, how it works, and its role in a Local AI platform.

---

# What is AI Memory?

AI Memory allows an AI system to remember information across conversations instead of treating every interaction as completely independent.

Without memory, every conversation starts from scratch.

With memory, the AI can remember:

- User preferences
- Previous conversations
- Ongoing projects
- Frequently used information
- Long-term knowledge

---

# Why Memory?

Large Language Models are stateless.

Example:

```
Chat 1

"My name is Abhijit."

↓

Chat Ends

↓

Chat 2

"What's my name?"
```

Without memory:

```
I don't know.
```

With memory:

```
Your name is Abhijit.
```

---

# Memory Types

## Short-Term Memory

Available only during the current conversation.

Examples:

- Previous prompts
- Current discussion
- Temporary context

Lost when the session ends.

---

## Long-Term Memory

Persists across conversations.

Examples:

- User preferences
- Favorite programming languages
- Coding style
- Frequently used projects

Stored in a database.

---

# Architecture

```text
              User

                │

                ▼

         Chat Interface

                │

                ▼

            AI Assistant

                │

        ┌───────┴────────┐

        ▼                ▼

 Short-Term        Long-Term

    Memory           Memory

        │                │

        ▼                ▼

 Conversation      SQLite / DB
```

---

# Memory Flow

```text
User

 │

 ▼

Ask Question

 │

 ▼

Search Memory

 │

 ▼

Relevant Memory Found

 │

 ▼

Attach to Prompt

 │

 ▼

LLM

 │

 ▼

Final Response
```

---

# What Can Be Stored?

Examples:

- Name
- Preferred language
- Coding preferences
- Favorite editor
- Ongoing projects
- Frequently used commands
- Writing style
- Learning progress

---

# What Should Not Be Stored?

Avoid storing:

- Passwords
- API Keys
- OTPs
- Banking Information
- Private Certificates
- Sensitive Company Secrets

---

# Memory Storage

Common storage options:

- SQLite
- PostgreSQL
- Redis
- ChromaDB
- JSON

SQLite is a popular choice for local AI systems.

---

# Memory Retrieval

When a new prompt arrives:

```
Explain RAII again.
```

The system searches memory for:

- Previous RAII discussions
- User preferences
- Related projects

Relevant memories are added to the prompt before sending it to the LLM.

---

# Memory vs RAG

| Memory | RAG |
|---------|-----|
| Stores user information | Stores documents |
| Personalized | Knowledge retrieval |
| Small | Large document collections |
| Conversation focused | Information focused |

They solve different problems and are often used together.

---

# Local AI Integration

```text
             Open WebUI

                  │

                  ▼

               Ollama

                  │

        ┌─────────┴─────────┐

        ▼                   ▼

     Memory               RAG

        │                   │

        ▼                   ▼

   SQLite DB         Vector Database
```

---

# Best Practices

- Store only useful long-term information.
- Allow users to update or delete memories.
- Encrypt sensitive local databases if needed.
- Keep memory focused and relevant.
- Periodically review stored information.

---

# Advantages

- Personalized responses
- Better continuity
- Reduced repetition
- Improved user experience
- Better project awareness

---

# Limitations

- Poor memory management can introduce outdated information.
- Excessive memory may reduce relevance.
- Requires careful privacy handling.
- Needs periodic maintenance.

---

# Summary

- AI Memory enables personalized and continuous conversations.
- It stores useful long-term information across sessions.
- Memory is different from RAG.
- Memory and RAG complement each other.
- SQLite is commonly used for local AI memory.

---

# Next

Continue with **08-tool-calling.md**.
