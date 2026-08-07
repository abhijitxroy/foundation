# Ollama

## Objective

Understand what Ollama is, why it is used, how it works, and its role in a Local AI platform.

---

# What is Ollama?

Ollama is an open-source runtime that allows you to download, manage, and run Large Language Models (LLMs) locally on your computer.

It provides a simple command-line interface and a local REST API, making it easy to integrate local AI models into applications.

Without Ollama, you would need to manually download model files, configure inference engines, and manage model execution yourself.

---

# Why Ollama?

Instead of using cloud-based AI services:

```
ChatGPT
Claude
Gemini
```

You can run models directly on your own machine.

Benefits:

- Privacy
- Offline execution
- No API cost
- Full control over models
- Local REST API
- Multiple model support

---

# Architecture

```text
               User

                 │

                 ▼

        Chat Interface / CLI

                 │

                 ▼

              Ollama

                 │

                 ▼

          Local LLM Runtime

                 │

                 ▼

        Qwen / Llama / Gemma

                 │

                 ▼

             Local Hardware
```

---

# Responsibilities

Ollama is responsible for:

- Downloading models
- Managing models
- Loading models into memory
- Running inference
- Serving a local REST API
- Managing model lifecycle

Ollama is **not** responsible for:

- Training models
- Fine-tuning models
- RAG
- Memory
- AI Agents
- Chat UI

Those are separate components.

---

# Model Lifecycle

```text
Pull Model

      │

      ▼

Store Model

      │

      ▼

Load into Memory

      │

      ▼

Run Inference

      │

      ▼

Generate Response

      │

      ▼

Unload Model
```

---

# How Ollama Works

Example:

```
You ask:

Explain RAII
```

Workflow:

```text
User

 │

 ▼

Ollama CLI

 │

 ▼

Ollama Server

 │

 ▼

Load Model

 │

 ▼

Run Inference

 │

 ▼

Return Response
```

---

# Local API

Ollama exposes a local REST API.

Default endpoint:

```
http://localhost:11434
```

Applications communicate with Ollama through this API instead of interacting directly with the model.

Examples:

- Open WebUI
- VS Code Extensions
- Python Applications
- AI Agents
- MCP Servers
- LangGraph
- LlamaIndex

---

# Model Storage

Downloaded models are stored locally.

Benefits:

- Offline execution
- No repeated downloads
- Fast startup
- Local ownership

Models remain available until explicitly removed.

---

# Supported Models

Examples:

- Qwen
- Llama
- Gemma
- Mistral
- DeepSeek
- Phi
- CodeLlama
- TinyLlama

Ollama supports many GGUF-compatible models.

---

# Multiple Models

Ollama can manage multiple models on the same machine.

Example:

```
Qwen

DeepSeek

Gemma

Mistral

Phi
```

Only the selected model is loaded into memory during inference.

---

# Model Switching

Changing models does not require reinstalling Ollama.

Example:

```
Current

↓

Qwen

↓

Switch

↓

Gemma

↓

Switch

↓

DeepSeek
```

Each model is managed independently.

---

# Offline Support

Internet is required only for:

- Installing Ollama
- Downloading models
- Updating models

After that, models can run completely offline.

---

# Security

Since everything runs locally:

- Prompts remain on the local machine
- Documents remain local
- Source code remains local
- No cloud API calls
- No external AI provider required

Always ensure local usage complies with your organization's security policies.

---

# Advantages

- Simple installation
- Cross-platform
- Open source
- Local execution
- Privacy
- Easy model management
- REST API
- Lightweight
- Active community

---

# Limitations

- Requires local hardware resources
- Large models require more RAM
- First model download can be large
- Initial loading time depends on model size

---

# Common Commands

List installed models

```bash
ollama list
```

Download a model

```bash
ollama pull qwen3:8b
```

Run a model

```bash
ollama run qwen3:8b
```

Show model information

```bash
ollama show qwen3:8b
```

Remove a model

```bash
ollama rm qwen3:8b
```

Start the server

```bash
ollama serve
```

---

# Best Practices

- Keep frequently used models installed.
- Remove unused models to free disk space.
- Use smaller models for everyday tasks.
- Use larger models only when needed.
- Verify model integrity after download.
- Keep Ollama updated.

---

# Summary

- Ollama is a local LLM runtime.
- It downloads, manages, and runs AI models locally.
- It provides a REST API for applications.
- It supports multiple open-source models.
- It enables offline and privacy-first AI workflows.

---

# Next

Continue with **04-model-management.md**.
