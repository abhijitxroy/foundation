# Local AI Projects

## Objective

Build practical, end-to-end Local AI applications using the concepts learned in **08-local-ai-setup**.

Unlike the previous section, which focused on understanding the architecture and concepts, this section focuses on designing, implementing, and deploying complete Local AI applications.

---

# Prerequisites

Before starting these projects, complete:

- 08-local-ai-setup

A good understanding of the following topics is expected:

- Ollama
- Open WebUI
- RAG
- Memory
- Tool Calling
- MCP
- AI Agents

---

# Project Roadmap

| Project | Description |
|----------|-------------|
| Offline Chatbot | Build a private ChatGPT-like assistant |
| Document Chat (RAG) | Chat with local documents using RAG |
| Code Assistant | AI assistant for software development |
| Git Assistant | Analyze repositories and automate Git tasks |
| Developer Assistant | AI-powered software engineering assistant |
| Terminal Agent | Execute terminal commands through AI |
| Multi-Agent System | Coordinate multiple specialized AI agents |
| Local AI Workstation | Build a complete personal AI platform |

---

# Learning Outcomes

After completing this section, you will be able to:

- Build a fully offline AI assistant
- Run multiple local LLMs
- Create ChatGPT-like interfaces
- Implement Retrieval-Augmented Generation (RAG)
- Build AI agents
- Integrate external tools using MCP
- Automate developer workflows
- Design production-ready Local AI platforms

---

# Recommended Learning Order

1. Offline Chatbot
2. Document Chat (RAG)
3. Code Assistant
4. Git Assistant
5. Developer Assistant
6. Terminal Agent
7. Multi-Agent System
8. Local AI Workstation

Each project builds upon the previous one, progressively adding new capabilities to the same Local AI platform.

---

# Technology Stack

The projects use the following technologies:

| Layer | Technology |
|--------|------------|
| LLM Runtime | Ollama |
| Models | Qwen, Gemma, Llama, Mistral, DeepSeek |
| Chat UI | Open WebUI |
| RAG | RAG Framework (e.g., LlamaIndex, LangChain) |
| Vector Database | ChromaDB |
| Memory | SQLite |
| Tool Calling | Python, Git, Shell |
| Protocol | MCP |
| Containers | Docker (Optional) |

---

# Repository Structure

```text
09-local-ai-projects/

├── README.md
├── 01-offline-chatbot.md
├── 02-document-chat-rag.md
├── 03-code-assistant.md
├── 04-git-assistant.md
├── 05-developer-assistant.md
├── 06-terminal-agent.md
├── 07-multi-agent-system.md
├── 08-local-ai-workstation.md
├── 09-project-roadmap.md
├── resources.md
└── scripts/
```

---

# End Goal

By the end of this section, you will have built a complete Local AI ecosystem capable of:

- Running fully offline
- Supporting multiple LLMs
- Searching and understanding local documents
- Understanding software projects
- Analyzing Git repositories
- Automating developer workflows
- Executing terminal commands safely
- Coordinating multiple AI agents
- Protecting your data and privacy

---

# Next

Continue with **01-offline-chatbot.md**.

---

# Next Steps

After completing these projects, the next step is to build production-ready AI systems using modern frameworks such as LangGraph, CrewAI, AutoGen, and MCP-based architectures.

Those implementations are intentionally maintained separately from this repository to keep this repository focused on concepts, architecture, and learning, while the implementation and showcase projects reside in the dedicated AI Engineering repository.