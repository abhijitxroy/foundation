# Performance

## Objective

Understand the factors that affect the performance of a Local AI platform and learn best practices for optimizing speed, responsiveness, and resource utilization.

---

# What is Performance?

Performance refers to how efficiently a Local AI platform processes requests and generates responses.

Key performance metrics include:

- Startup Time
- Model Loading Time
- Response Time
- Tokens Per Second (TPS)
- Memory Usage
- CPU Usage
- GPU Usage
- Storage Usage

---

# Performance Pipeline

```text
User

 │

 ▼

Open WebUI

 │

 ▼

Ollama

 │

 ▼

Load Model

 │

 ▼

Inference

 │

 ▼

Generate Tokens

 │

 ▼

Final Response
```

Every stage contributes to overall performance.

---

# Factors Affecting Performance

## Hardware

Primary factors:

- CPU
- GPU
- RAM
- Storage

---

## Model Size

Larger models generally provide better reasoning but require more resources.

| Model | Performance |
|--------|-------------|
| 1B | Very Fast |
| 4B | Fast |
| 7B–8B | Balanced |
| 14B | Moderate |
| 30B+ | Slow (Consumer Hardware) |

---

## RAM

Insufficient RAM causes:

- Memory pressure
- Swapping
- Increased latency
- Reduced responsiveness

Recommended:

| RAM | Recommendation |
|------|----------------|
| 8 GB | Small Models |
| 16 GB | Most 7B–8B Models |
| 32 GB | Larger Models |
| 64 GB+ | Multiple Large Models |

---

## Storage

Model loading depends on storage speed.

Comparison:

| Storage | Performance |
|----------|-------------|
| HDD | Slow |
| SATA SSD | Good |
| NVMe SSD | Excellent |

SSD storage significantly reduces model loading time.

---

## CPU vs GPU

### CPU

- General computation
- Suitable for smaller models
- Available on all systems

### GPU

- Parallel computation
- Faster inference
- Better for large models

Apple Silicon uses its unified architecture to accelerate local inference without a discrete GPU.

---

## Quantization

Quantization reduces model size by using lower-precision weights.

Benefits:

- Smaller models
- Lower RAM usage
- Faster inference

Trade-off:

- Slight reduction in model quality

---

## Context Window

A larger context window allows the model to process more information but increases:

- Memory usage
- Processing time

Use only the context size required for the task.

---

## Concurrent Requests

Running multiple requests simultaneously increases:

- CPU utilization
- Memory usage
- Response time

Limit concurrency based on available hardware.

---

## Tool Calling

Tool execution also affects performance.

Examples:

- File search
- Git operations
- Python execution
- Database queries

Slow tools slow the overall workflow.

---

## RAG Performance

RAG performance depends on:

- Embedding model
- Vector database
- Chunk size
- Number of retrieved documents

Efficient indexing improves retrieval speed.

---

## Memory Performance

Keep memory concise.

Large or irrelevant memory increases prompt size and slows inference.

---

# Performance Metrics

Useful metrics include:

- Tokens Per Second (TPS)
- Response Time
- Model Load Time
- RAM Usage
- CPU Usage
- GPU Usage
- Disk Usage

These metrics help identify bottlenecks.

---

# Optimization Strategies

- Use appropriately sized models.
- Store models on SSDs.
- Keep sufficient free RAM.
- Remove unused models.
- Keep documents well-organized.
- Limit retrieved RAG chunks.
- Use efficient embedding models.
- Update Ollama regularly.

---

# Common Bottlenecks

| Problem | Possible Cause |
|----------|----------------|
| Slow startup | Large model |
| Slow responses | Limited RAM |
| High CPU usage | CPU-only inference |
| Long model loading | HDD storage |
| Slow retrieval | Large vector database |
| Memory pressure | Large context window |

---

# Best Practices

- Choose models based on available hardware.
- Use SSD storage whenever possible.
- Keep the operating system updated.
- Monitor resource utilization.
- Benchmark after major changes.
- Scale hardware only when necessary.

---

# Summary

- Performance depends on hardware, model size, storage, memory, and configuration.
- Quantization improves efficiency.
- SSDs reduce model loading time.
- Monitoring performance helps identify bottlenecks.
- Optimizing each component improves the overall Local AI experience.

---

# Next

Continue with **12-troubleshooting.md**.
