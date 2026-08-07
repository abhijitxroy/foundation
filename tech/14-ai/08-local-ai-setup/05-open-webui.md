# Open WebUI

## Objective

Understand what Open WebUI is, why it is used, how it works, and its role in a Local AI platform.

---

# What is Open WebUI?

Open WebUI is an open-source, self-hosted web interface for interacting with Large Language Models (LLMs).

It provides a modern ChatGPT-like user interface while running entirely on your local machine.

Open WebUI does **not** run AI models itself. Instead, it communicates with an LLM runtime such as Ollama through a local API.

---

# Why Open WebUI?

Although Ollama provides a command-line interface, most users prefer a graphical interface for daily interactions.

Open WebUI provides:

- ChatGPT-like experience
- Multi-chat support
- Conversation history
- Model selection
- Markdown rendering
- Code syntax highlighting
- File upload
- User management
- Plugin support

---

# Architecture

```text
                 User

                   │

                   ▼

            Open WebUI

                   │

           HTTP REST API

                   │

                   ▼

                Ollama

                   │

                   ▼

          Local LLM Runtime

                   │

                   ▼

      Qwen / Llama / Gemma
```

---

# Responsibilities

Open WebUI is responsible for:

- User Interface
- Chat Management
- Conversation History
- Model Selection
- Prompt Submission
- Markdown Rendering
- File Upload
- User Authentication

Open WebUI is **not** responsible for:

- Running AI models
- Training models
- RAG
- Memory
- Tool Calling
- Model Management

Those responsibilities belong to other components.

---

# Request Flow

```text
User

 │

 ▼

Open WebUI

 │

 ▼

Ollama API

 │

 ▼

Selected Model

 │

 ▼

Response

 │

 ▼

Open WebUI

 │

 ▼

User
```

---

# Model Selection

If multiple models are installed, Open WebUI allows selecting the active model directly from the interface.

Example:

```
Qwen

Gemma

DeepSeek

Mistral

Phi
```

Changing the model does not require restarting the application.

---

# Conversation Management

Open WebUI stores:

- Chat history
- Conversation titles
- Prompt history
- Model used
- Session information

This improves the user experience compared to using only the command line.

---

# Features

- Chat Interface
- Dark Mode
- Markdown Support
- Code Highlighting
- File Upload
- Image Support (Model Dependent)
- Multi-User Support
- Authentication
- Responsive UI
- REST API Integration

---

# Supported Backends

Common AI runtimes include:

- Ollama
- OpenAI Compatible APIs
- Other supported inference servers

For a local AI platform, Ollama is the recommended backend.

---

# Deployment Options

Open WebUI can be deployed using:

- Docker
- Docker Compose
- Native Installation

Docker is generally the preferred option because it simplifies upgrades and dependency management.

---

# Security

Since Open WebUI communicates with a local Ollama instance:

- Prompts remain local
- Documents remain local
- No external API calls are required
- Supports fully offline operation

When exposing Open WebUI outside the local machine, configure authentication and network security appropriately.

---

# Advantages

- Modern interface
- Easy to use
- Open source
- Cross-platform
- Multi-model support
- Conversation history
- Works offline
- Active community

---

# Limitations

- Requires a backend inference engine
- Does not manage model downloads
- Performance depends on the underlying model and hardware
- Advanced features may require additional configuration

---

# Best Practices

- Use Docker for deployment.
- Connect Open WebUI to a local Ollama instance.
- Keep chat history backed up if important.
- Enable authentication when accessible over a network.
- Update regularly to receive new features and security fixes.

---

# Summary

- Open WebUI is a ChatGPT-like interface.
- It does not run AI models directly.
- It communicates with Ollama through a local API.
- It simplifies interaction with local LLMs.
- It is one of the core components of a local AI platform.

---

# Next

Continue with **06-RAG.md**.
