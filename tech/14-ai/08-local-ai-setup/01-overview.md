# Local AI Setup

## Objective

Build a completely local, privacy-first AI platform that runs on your own machine without requiring an internet connection after the initial setup.

## Goals

- Run Large Language Models (LLMs) locally
- Keep all prompts and documents on the local machine
- Use multiple LLMs for different tasks
- Build an AI assistant with memory and tool calling
- Search local documents using RAG
- Create a reusable and extensible AI platform

## Architecture

```text
                 User
                   │
                   ▼
            Chat Interface
                   │
                   ▼
             Model Router
                   │
      ┌────────────┼────────────┐
      ▼            ▼            ▼
    Qwen      DeepSeek      Gemma
      │            │            │
      └────────────┼────────────┘
                   ▼
              Ollama Runtime
                   │
      ┌────────────┼────────────┐
      ▼            ▼            ▼
   Memory        Tools        RAG
                   │
                   ▼
            Local File System
```

## Features

- Offline AI
- Multiple local LLMs
- Chat interface
- Model management
- Local document search (RAG)
- Tool calling
- Memory
- AI agents
- Voice support (optional)
- API integration

## Learning Path

1. Overview
2. Prerequisites
3. Ollama
4. Model Management
5. Open WebUI
6. RAG
7. Memory
8. Tool Calling
9. MCP
10. AI Agents
11. Performance
12. Troubleshooting

## Directory Structure

```text
08-local-ai-setup/

├── README.md
├── 01-overview.md
├── 02-prerequisites.md
├── 03-ollama.md
├── 04-model-management.md
├── 05-open-webui.md
├── 06-rag.md
├── 07-memory.md
├── 08-tool-calling.md
├── 09-mcp.md
├── 10-agents.md
├── 11-performance.md
├── 12-troubleshooting.md
└── scripts/
    └── local-ai-installer.sh
```

## Next

Continue with **02-prerequisites.md**.
