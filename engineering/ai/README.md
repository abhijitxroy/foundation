# Artificial Intelligence (AI)

## Overview

This section provides a beginner-friendly and engineering-focused introduction to modern Artificial Intelligence. The goal is to build a strong conceptual foundation before diving into frameworks, models, and real-world AI applications.

The topics are organized in a dependency-based order so that each concept naturally builds on the previous one. By the end of this section, you should understand:
- What AI, Machine Learning, and Deep Learning are.
- How neural networks learn from data.
- The core concepts behind PyTorch.
- How modern AI systems such as Transformers and Large Language Models (LLMs) work.
- How AI models are trained, deployed, and used in production.

## Learning Path

```text
AI Overview
      │
      ▼
AI Fundamentals
      │
      ▼
AI Training vs Inference
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
Large Language Models (LLMs)
      │
      ▼
Hugging Face
      │
      ▼
Model Deployment
```

## Recommended Reading Sequence

| Order | Topic | File |
|------:|--------|------|
| 1 | AI Overview | `ai-overview.md` |
| 2 | AI Fundamentals | `ai-fundamentals.md` |
| 3 | AI Training vs Inference | `ai-inference-vs-training.md` |
| 4 | Machine Learning | `machine-learning.md` |
| 5 | Deep Learning | `deep-learning.md` |
| 6 | Neural Networks | `neural-networks.md` |
| 7 | PyTorch | `pytorch.md` |
| 8 | Tensors | `tensors.md` |
| 9 | Autograd | `autograd.md` |
| 10 | `torch.nn` | `torch-nn.md` |
| 11 | `torch.optim` | `torch-optim.md` |
| 12 | Training Loop | `training-loop.md` |
| 13 | Convolutional Neural Networks (CNNs) | `cnn.md` |
| 14 | Transformers | `transformers.md` |
| 15 | Large Language Models (LLMs) | `llms.md` |
| 16 | Hugging Face | `hugging-face.md` |
| 17 | Model Deployment | `model-deployment.md` |

## Repository Structure

```text
engineering
└── ai
    ├── README.md
    ├── ai-overview.md
    ├── ai-fundamentals.md
    ├── ai-inference-vs-training.md
    ├── machine-learning.md
    ├── deep-learning.md
    ├── neural-networks.md
    ├── pytorch.md
    ├── tensors.md
    ├── autograd.md
    ├── torch-nn.md
    ├── torch-optim.md
    ├── training-loop.md
    ├── cnn.md
    ├── transformers.md
    ├── llms.md
    ├── hugging-face.md
    └── model-deployment.md
```

## Topic Relationships

```text
                         Artificial Intelligence
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

## Study Goal

After completing this section, you should be able to:
- Explain the difference between AI, ML, and Deep Learning.
- Understand how neural networks learn from data.
- Describe the role of tensors, Autograd, `torch.nn`, and `torch.optim` in PyTorch.
- Understand the purpose of the training loop.
- Explain the basic ideas behind CNNs, Transformers, and LLMs.
- Understand how Hugging Face simplifies working with modern AI models.
- Understand how trained AI models are deployed and used in real-world applications.

## Notes

- Read the topics in the recommended order for the best learning experience.
- Focus on understanding the concepts before writing code.
- The objective of this section is to build a strong engineering foundation for modern AI and PyTorch rather than provide an advanced mathematical treatment.
