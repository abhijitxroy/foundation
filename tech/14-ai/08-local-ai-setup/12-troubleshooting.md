# Troubleshooting

## Objective

Identify, diagnose, and resolve common issues encountered while building and operating a Local AI platform.

---

# Troubleshooting Process

When an issue occurs:

1. Identify the problem.
2. Collect error messages.
3. Verify prerequisites.
4. Check logs.
5. Isolate the failing component.
6. Apply the appropriate fix.
7. Verify the solution.

Never assume the first error message is the root cause.

---

# Troubleshooting Architecture

```text
                 User

                   │

                   ▼

             Open WebUI

                   │

                   ▼

                Ollama

                   │

      ┌────────────┼────────────┐

      ▼            ▼            ▼

   Models        Memory        RAG

      │            │            │

      └────────────┼────────────┘

                   ▼

             Local Hardware
```

A failure in any layer can affect the entire system.

---

# Common Issues

## Ollama Not Installed

### Symptoms

```
ollama: command not found
```

### Possible Causes

- Ollama not installed
- PATH not configured

### Resolution

- Install Ollama.
- Verify installation.

```bash
ollama --version
```

---

## Ollama Server Not Running

### Symptoms

```
Connection refused
```

### Verify

```bash
curl http://localhost:11434/api/tags
```

### Resolution

Start the server.

```bash
ollama serve
```

---

## Model Not Found

### Symptoms

```
model not found
```

### Verify

```bash
ollama list
```

### Resolution

Download the model.

```bash
ollama pull qwen3:8b
```

---

## Slow Responses

### Possible Causes

- Large model
- Limited RAM
- CPU-only inference
- Large context window

### Resolution

- Use a smaller model.
- Reduce context size.
- Close unnecessary applications.

---

## High Memory Usage

### Symptoms

- System slowdown
- Swapping
- Application freeze

### Resolution

- Use a smaller model.
- Increase available RAM.
- Reduce concurrent workloads.

---

## Model Loading Takes Too Long

### Possible Causes

- HDD storage
- Large model
- Low free memory

### Resolution

- Move models to an SSD.
- Remove unused models.

---

## Open WebUI Cannot Connect to Ollama

### Verify

```
http://localhost:11434
```

### Possible Causes

- Ollama not running
- Incorrect endpoint
- Firewall restrictions

### Resolution

- Start Ollama.
- Verify configuration.
- Check firewall rules.

---

## RAG Returns Incorrect Results

### Possible Causes

- Poor chunking
- Incorrect embeddings
- Outdated index
- Missing documents

### Resolution

- Re-index documents.
- Review chunk size.
- Verify embedding model.

---

## Memory Not Working

### Possible Causes

- Memory disabled
- Database issue
- Retrieval failure

### Resolution

- Verify memory configuration.
- Check database.
- Restart the application.

---

## Tool Calling Fails

### Possible Causes

- Tool unavailable
- Permission denied
- Incorrect arguments

### Resolution

- Verify tool installation.
- Check permissions.
- Validate inputs.

---

## MCP Connection Failure

### Possible Causes

- MCP server not running
- Invalid configuration
- Authentication failure

### Resolution

- Start the MCP server.
- Verify configuration.
- Check credentials.

---

# Performance Checklist

Verify:

- Available RAM
- Free disk space
- CPU utilization
- SSD health
- Model size
- Context window
- Running processes

---

# Useful Commands

List installed models

```bash
ollama list
```

Show model information

```bash
ollama show qwen3:8b
```

Run a model

```bash
ollama run qwen3:8b
```

Start the server

```bash
ollama serve
```

Verify the API

```bash
curl http://localhost:11434/api/tags
```

Check disk usage

```bash
df -h
```

Check memory

### macOS

```bash
vm_stat
```

### Linux

```bash
free -h
```

### Windows

```powershell
Get-ComputerInfo
```

---

# Best Practices

- Read the complete error message.
- Verify one component at a time.
- Keep software updated.
- Back up important configurations.
- Maintain sufficient free disk space.
- Monitor system resources.
- Avoid changing multiple settings simultaneously during troubleshooting.

---

# Summary

- Troubleshooting should follow a structured process.
- Verify prerequisites before investigating complex issues.
- Diagnose one layer at a time.
- Use logs and verification commands to isolate problems.
- A methodical approach is faster than trial and error.

---

# Next

Continue with **scripts/local-ai-installer.sh** to automate the setup of the Local AI platform.
