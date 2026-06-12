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
Hugging Face
      │
      ▼
Model Deployment
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
                            Hugging Face
                                   │
                                   ▼
                           Model Deployment
```

---

## Final Goal

After completing this AI section, you should be able to comfortably explain:

- What AI, ML, and Deep Learning are.
- How neural networks learn.
- What tensors are and why they exist.
- The role of Autograd, `torch.nn`, and `torch.optim`.
- How the PyTorch training loop works.
- The difference between CNNs and Transformers.
- How LLMs work at a high level.
- What Hugging Face provides.
- How AI models are deployed and used in real-world applications.