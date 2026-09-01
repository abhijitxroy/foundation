# AI Notes

## Purpose

This file is a **quick revision and memory aid** for the AI section. It is **not** intended to replace the detailed topic files. Instead, it summarizes the most important concepts that should be remembered and the relationships between them.

**Goal:** Revise the complete AI and PyTorch foundation in **5-10 minutes**.

---

## AI Hierarchy

```text
Artificial Intelligence (AI)
            │
            ▼
Machine Learning (ML)
            │
            ▼
Deep Learning (DL)
            │
            ▼
Neural Networks
            │
            ├── CNNs
            └── Transformers
                     │
                     ▼
                    LLMs
```

### Remember

- **AI** → Broad field of building intelligent systems.
- **ML** → AI systems that learn from data.
- **DL** → ML using deep neural networks.
- **CNNs** → Neural networks for images.
- **Transformers** → Neural networks for sequence data.
- **LLMs** → Large Language Models built using Transformers.

---

## AI Learning Path

```text
AI Overview
      │
      ▼
AI Fundamentals
      │
      ▼
Training vs Inference
      │
      ▼
Machine Learning
      │
      ▼
Deep Learning
      │
      ▼
Neural Networks
      │
      ▼
PyTorch
      │
      ▼
Tensors
      │
      ▼
Autograd
      │
      ▼
torch.nn
      │
      ▼
torch.optim
      │
      ▼
Training Loop
      │
      ▼
CNNs
      │
      ▼
Transformers
      │
      ▼
LLMs
      │
      ▼
Prompt Engineering
      │
      ▼
Embeddings
      │
      ▼
Vector Databases
      │
      ▼
RAG
      │
      ▼
AI Agents
      │
      ▼
Multimodal AI
      │
      ▼
AI Engineering
      │
      ▼
Evaluation
      │
      ▼
Hugging Face
      │
      ▼
LLM Applications
      │
      ▼
Model Deployment
      │
      ▼
Responsible AI
      │
      ▼
MLOps
      │
      ▼
Feature Store
      │
      ▼
Model Versioning
      │
      ▼
Model Monitoring
      │
      ▼
Pipelines
      │
      ▼
Enterprise AI
```

---

## AI vs ML vs DL

| Concept | Simple Meaning |
|-----------|----------------|
| AI | Building intelligent systems. |
| ML | Learning patterns from data. |
| DL | Using deep neural networks to learn patterns. |

### Relationship

```text
AI
└── Machine Learning
    └── Deep Learning
```

---

## Training vs Inference

| Training | Inference |
|-----------|------------|
| Model learns from data. | Model uses what it learned. |
| Updates model weights. | Does not update weights. |
| Uses backpropagation. | Only performs forward pass. |
| High computational cost. | Lower computational cost. |

### Remember

- **Training = Learning.**
- **Inference = Prediction.**

---

## PyTorch Core Components

| Component | Responsibility |
|------------|---------------|
| Tensor | Stores data. |
| Autograd | Computes gradients automatically. |
| `torch.nn` | Defines the neural network. |
| `torch.optim` | Updates model parameters. |
| Training Loop | Combines everything together. |

### Relationship

```text
Input Data
     │
     ▼
Tensor
     │
     ▼
torch.nn
     │
     ▼
Prediction
     │
     ▼
Loss
     │
     ▼
Autograd
     │
     ▼
torch.optim
     │
     ▼
Updated Model
```

---

## Training Loop

### Complete Flow

```text
Load Data
    │
    ▼
Forward Pass
    │
    ▼
Prediction
    │
    ▼
Calculate Loss
    │
    ▼
Backward Pass
    │
    ▼
Optimizer Updates Weights
    │
    ▼
Repeat
```

### Three Commands to Remember

```python
optimizer.zero_grad()
loss.backward()
optimizer.step()
```

| Command | Purpose |
|-----------|----------|
| `optimizer.zero_grad()` | Clear old gradients. |
| `loss.backward()` | Compute gradients. |
| `optimizer.step()` | Update model parameters. |

---

## Neural Network Basics

### Structure

```text
Input Layer
      │
      ▼
Hidden Layer(s)
      │
      ▼
Output Layer
```

### Key Concepts

- Neuron → Basic processing unit.
- Weight → Importance of an input.
- Bias → Additional adjustable parameter.
- Activation Function → Adds non-linearity.
- Forward Pass → Generate prediction.
- Backpropagation → Learn from errors.

---

## Tensor Basics

| Object | Dimension |
|----------|------------|
| Scalar | 0D |
| Vector | 1D |
| Matrix | 2D |
| Tensor | 3D or higher |

### Remember

- Images, text, audio, and model parameters are represented as tensors.
- GPUs are optimized for tensor operations.
- Tensors are the fundamental data structure of PyTorch.

---

## CNN vs Transformer

| CNN | Transformer |
|------|-------------|
| Best for images. | Best for text and sequence data. |
| Uses convolution filters. | Uses attention mechanism. |
| Foundation of computer vision. | Foundation of modern LLMs. |

### Remember

- **CNN → Images.**
- **Transformer → Language and sequences.**

---

## Modern Generative AI Stack

| Component | Purpose |
|-----------|---------|
| Prompt | Instructs the LLM what to do. |
| Embedding | Converts information into semantic vectors. |
| Vector Database | Stores and retrieves embeddings efficiently. |
| RAG | Retrieves external knowledge before generation. |
| AI Agent | Uses reasoning, memory, and tools to complete tasks. |

---

## LLM Quick Facts

- LLM = **Large Language Model**.
- Built using the **Transformer** architecture.
- Trained on massive amounts of text data.
- Generates responses by predicting the next token.
- Examples: ChatGPT, Llama, Gemini, Claude, Mistral.

---

## Hugging Face Quick Facts

- Open-source AI ecosystem.
- Provides pre-trained models and datasets.
- Works closely with PyTorch.
- `transformers` is the most widely used library.
- Used for inference and fine-tuning.

---

## Model Deployment

```text
Train Model
     │
     ▼
Save Model
     │
     ▼
Deploy Model
     │
     ▼
Inference
     │
     ▼
User or Application
```

### Remember

- Training creates the model.
- Deployment makes the model usable.
- Inference is what happens after deployment.

---

## Must Memorize

### Definitions

- AI.
- Machine Learning.
- Deep Learning.
- Neural Network.
- Tensor.
- Training.
- Inference.
- Model.
- Dataset.
- Prompt Engineering.
- Embeddings.
- Vector Database.
- Retrieval-Augmented Generation (RAG).
- AI Agent.
- MLOps.

### PyTorch Building Blocks

- Tensor → Stores data.
- Autograd → Computes gradients.
- `torch.nn` → Defines the model.
- `torch.optim` → Updates parameters.

### Training Loop

```text
Forward Pass
      ↓
Prediction
      ↓
Loss
      ↓
Backward Pass
      ↓
Optimizer Step
```

### Three Core Commands

```python
optimizer.zero_grad()
loss.backward()
optimizer.step()
```

---

## Must Understand

Do not try to memorize every detail. Focus on understanding:

- Why Machine Learning is different from traditional programming.
- Why Deep Learning uses neural networks.
- Why tensors are needed.
- Why Autograd exists.
- How `torch.nn` and `torch.optim` work together.
- Why the training loop improves the model.
- Why CNNs are good for images.
- Why Transformers replaced RNNs.
- How LLMs generate text.
- How Hugging Face simplifies AI development.
- How a trained model becomes a deployed application.

---

## No Need to Memorize

You do **not** need to memorize:
- Exact API syntax.
- Mathematical formulas.
- Tensor dimensions for every use case.
- Optimizer implementation details.
- Exact model parameter counts.
- Historical dates.
- Long code examples.
- Every Hugging Face library.

These can always be looked up when needed.

---

## The One Diagram to Remember

```text
                         Artificial Intelligence
                                   │
                                   ▼
                         Machine Learning
                                   │
                                   ▼
                          Deep Learning
                                   │
                                   ▼
                         Neural Networks
                                   │
                     ┌─────────────┴─────────────┐
                     │                           │
                     ▼                           ▼
                 PyTorch                   CNN (Images)
                     │
         ┌───────────┼───────────┐
         │           │           │
         ▼           ▼           ▼
      Tensors    Autograd    torch.nn
                                   │
                                   ▼
                            torch.optim
                                   │
                                   ▼
                            Training Loop
                                   │
                                   ▼
                             Transformers
                                   │
                                   ▼
                                 LLMs
                                   │
                                   ▼
                        Prompt Engineering
                                   │
                                   ▼
                              Embeddings
                                   │
                                   ▼
                          Vector Databases
                                   │
                                   ▼
                                  RAG
                                   │
                                   ▼
                               AI Agents
                                   │
                                   ▼
                            AI Engineering
                                   │
                                   ▼
                                 MLOps
                                   │
                                   ▼
                            Enterprise AI
```

---

## Final Goal


---

## What Is Involved When I Ask an AI Question?

A useful mental model is:

```text
You
 │
 ▼
Your Question
 │
 ▼
┌─────────────────────────────┐
│        AI System            │
│                             │
│  1. Instructions            │
│  2. Conversation Context    │
│  3. LLM                     │
│  4. Tools, if needed        │
│     ├─ Web Search           │
│     ├─ Code / Python        │
│     ├─ Connectors           │
│     ├─ Image Generation     │
│     └─ Other Tools          │
└─────────────────────────────┘
 │
 ▼
Answer
```

### Main Components

| Component | Always Involved? | What It Does |
|-----------|------------------|--------------|
| **LLM** | Yes | Understands the question, reasons about the available information, and generates the response. |
| **Conversation Context** | Usually | Provides relevant information from the current conversation. |
| **System / Developer Instructions** | Yes | Define behavior, constraints, and rules the AI must follow. |
| **RAG / Retrieval** | No | Retrieves external or stored information when a retrieval mechanism is used. |
| **Web Search** | Sometimes | Retrieves current or external information from the internet. |
| **Tools** | Sometimes | Performs tasks such as calculations, code execution, GitHub operations, or other external actions. |
| **Human Intervention** | Normally No | A human does not normally manually write or review an individual answer before it is returned. |
| **Training Data** | Indirectly | Provides the knowledge and patterns learned by the model during training; the model does not normally query the training dataset for every question. |

### LLM vs RAG vs Tools

**LLM = reasoning and language generation engine**

The LLM interprets the question and produces the final response.

**RAG = Retrieval-Augmented Generation**

RAG retrieves relevant information and provides it to the LLM so the LLM can use that information when generating the answer.

```text
Question
   │
   ▼
Retrieve Information
   │
   ▼
LLM
   │
   ▼
Generated Answer
```

**Tool Calling = LLM using an external capability**

The LLM can decide that it needs a tool, use the tool, receive the result, and then incorporate that result into the final answer.

```text
Question
   │
   ▼
LLM
   │
   ├── Tool needed? ── Yes ──► Tool
   │                           │
   │                           ▼
   │                      Tool Result
   │                           │
   └───────────────────────────┘
               │
               ▼
          Final Answer
```

### Examples

#### Simple Knowledge Question

For a question such as:

> What is RAII in C++?

The answer may primarily involve:

```text
Question
   ↓
LLM + Context + Instructions
   ↓
Answer
```

External retrieval is not necessarily required.

#### Current / External Information

For a question such as:

> What are the latest developments about a historical event or current technology?

The system may use web search or another retrieval mechanism:

```text
Question
   ↓
LLM
   ↓
Web Search / Retrieval
   ↓
External Sources
   ↓
LLM analyzes retrieved information
   ↓
Answer + Citations
```

#### GitHub Task

For a repository or pull-request task:

```text
Question
   ↓
LLM
   ↓
GitHub Tool / Connector
   ↓
Repository / PR / CI Data
   ↓
LLM analyzes the result
   ↓
Answer
```

#### Python / Calculation Task

```text
Question
   ↓
LLM
   ↓
Python / Calculator Tool
   ↓
Result
   ↓
LLM explains the result
   ↓
Answer
```

### Human Intervention

For a normal AI conversation:

```text
You → AI System → Answer
```

There is normally no human sitting behind the conversation and manually composing the response in real time.

Humans can still be involved in the broader AI system lifecycle, including training, evaluation, safety, infrastructure, and product development. That is different from human intervention in an individual response.

### Important Mental Model

```text
LLM
  = Core reasoning + language generation

RAG
  = Retrieval + LLM generation

Tool Calling
  = LLM + External capability

Context
  = Information already available to the model

Human Intervention
  = Normally not part of generating an individual answer
```

### Remember

> **RAG, web search, Python, GitHub, and other tools are not separate brains answering the user. The LLM remains the component that interprets the information and formulates the response.**

