# Model Management

## Objective

Understand how local LLMs are organized, downloaded, stored, updated, switched, and removed.

---

# What is a Model?

A model is a pre-trained neural network capable of understanding and generating text.

Examples:

- Qwen
- Llama
- Gemma
- Mistral
- DeepSeek
- Phi

Each model is independent and can be installed, updated, or removed separately.

---

# Why Model Management?

Instead of relying on a single model, a local AI platform can maintain multiple models optimized for different tasks.

Example:

| Task | Recommended Model |
|------|-------------------|
| Coding | Qwen |
| Reasoning | DeepSeek |
| General Chat | Llama |
| Fast Responses | Mistral |
| Lightweight | Phi |

---

# Model Lifecycle

```text
Download

    │

    ▼

Store

    │

    ▼

Load

    │

    ▼

Inference

    │

    ▼

Unload

    │

    ▼

Update / Remove
```

---

# Model Repository

Models are downloaded from supported repositories.

Example:

```
ollama pull qwen3:8b
```

The model is stored locally and reused until removed.

---

# Model Naming

A model name usually consists of:

```
<model>:<tag>
```

Example:

```
qwen3:8b
llama3.1:8b
gemma3:4b
mistral:7b
```

The tag generally identifies the model variant.

---

# Installing a Model

Example:

```bash
ollama pull qwen3:8b
```

---

# Listing Installed Models

```bash
ollama list
```

---

# Viewing Model Details

```bash
ollama show qwen3:8b
```

---

# Running a Model

```bash
ollama run qwen3:8b
```

---

# Switching Models

No reinstallation is required.

Simply run another model.

Example:

```
Qwen

↓

DeepSeek

↓

Gemma
```

Only one model is typically loaded into memory at a time.

---

# Updating Models

Download the latest version:

```bash
ollama pull qwen3:8b
```

---

# Removing Models

```bash
ollama rm qwen3:8b
```

Removing a model deletes the local copy only.

---

# Storage Considerations

Factors affecting storage:

- Number of models
- Model size
- Quantization
- Additional embeddings

Use an external SSD if maintaining many models.

---

# Memory Usage

Storage and memory are different.

Storage keeps the model on disk.

Memory is required only while the model is running.

---

# Model Selection Strategy

Instead of installing every available model, choose models based on your workload.

Example:

| Purpose | Model |
|----------|-------|
| Primary | Qwen |
| Reasoning | DeepSeek |
| Fast | Mistral |
| Lightweight | Phi |

---

# Best Practices

- Keep one primary model.
- Install specialist models only when needed.
- Remove unused models.
- Keep models updated.
- Verify downloaded models before use.

---

# Summary

- Models are independent.
- Ollama manages the model lifecycle.
- Multiple models can coexist.
- Only the active model is loaded into memory.
- Different models can be used for different tasks.

---

# Next

Continue with **05-open-webui.md**.
