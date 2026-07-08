# PyTorch

## Overview

PyTorch is an open-source machine learning and deep learning framework developed by Meta AI. It provides an easy and Python-friendly way to build, train, and deploy neural networks. PyTorch is widely used in research, education, and production AI systems.

## What Problem Does PyTorch Solve?

Before frameworks like PyTorch, implementing neural networks required manually writing mathematical operations, calculating gradients, and optimizing parameters. This process was difficult, error-prone, and time-consuming.

PyTorch automates most of these tasks:
- Tensor computation (similar to NumPy but GPU accelerated).
- Automatic differentiation (Autograd).
- Building neural network layers.
- Training and optimizing models.
- Running workloads on CPUs and GPUs.

## Why PyTorch?

| Feature | Benefit |
|----------|----------|
| Easy Python syntax | Simple to learn and write. |
| Dynamic computation graph | Flexible debugging and experimentation. |
| GPU acceleration | Faster model training. |
| Rich ecosystem | Large collection of libraries and tools. |
| Industry adoption | Used by researchers and major AI companies. |
| Strong community | Extensive tutorials, examples, and support. |

## Core Concepts

### Tensor

A tensor is the basic data structure in PyTorch. It is similar to a NumPy array but can run on GPUs for high-performance computing.

| Object | Dimension | Example |
|----------|------------|----------|
| Scalar | 0D | `5` |
| Vector | 1D | `[1, 2, 3]` |
| Matrix | 2D | `[[1, 2], [3, 4]]` |
| Tensor | nD | Images, videos, datasets |

Example:
```python
import torch

x = torch.tensor([[1, 2], [3, 4]])
print(x)
```

### Autograd

Autograd is PyTorch's automatic differentiation engine. It automatically calculates gradients required for training neural networks using backpropagation.

Instead of manually computing derivatives, developers simply mark tensors with `requires_grad=True`.

Example:
```python
import torch

x = torch.tensor(2.0, requires_grad=True)
y = x * x
y.backward()

print(x.grad)  # Output: 4.0
```

### Neural Network Module (`torch.nn`)

The `torch.nn` package provides ready-made building blocks for creating deep learning models:
- Linear (fully connected) layers.
- Convolutional layers.
- Recurrent layers.
- Activation functions.
- Loss functions.

Example:
```python
import torch.nn as nn

model = nn.Sequential(
    nn.Linear(4, 8),
    nn.ReLU(),
    nn.Linear(8, 2)
)
```

### Optimizers (`torch.optim`)

Optimizers update model parameters to minimize the loss function during training.

Common optimizers:
- SGD (Stochastic Gradient Descent)
- Adam
- AdamW
- RMSprop

Example:
```python
import torch.optim as optim

optimizer = optim.Adam(model.parameters(), lr=0.001)
```

## PyTorch Training Workflow

```text
Dataset
   │
   ▼
Convert to Tensors
   │
   ▼
Build Neural Network
   │
   ▼
Forward Pass
   │
   ▼
Calculate Loss
   │
   ▼
Backward Pass (Autograd)
   │
   ▼
Optimizer Updates Weights
   │
   ▼
Repeat Until Model Learns
```

## Main Components

| Module | Purpose |
|----------|----------|
| `torch` | Core tensor library. |
| `torch.nn` | Neural network layers and models. |
| `torch.optim` | Optimization algorithms. |
| `torch.utils.data` | Data loading and batching. |
| `torch.autograd` | Automatic gradient calculation. |
| `torch.cuda` | GPU support and management. |
| `torchvision` | Computer vision datasets and models. |
| `torchaudio` | Audio processing utilities. |
| `torchtext` | Natural language processing utilities. |

## CPU vs GPU Execution

By default, PyTorch runs on the CPU. If a compatible GPU is available, tensors and models can be moved to the GPU for significantly faster computation.

Example:
```python
device = "cuda" if torch.cuda.is_available() else "cpu"

model = model.to(device)
```

## Dynamic Computation Graph

PyTorch creates the computation graph dynamically during execution. This means the graph is built as Python code runs, making debugging and experimenting easier compared to older static-graph frameworks.

### Static vs Dynamic Graph

| Feature | Static Graph | Dynamic Graph (PyTorch) |
|----------|-------------|--------------------------|
| Graph creation | Before execution | During execution |
| Debugging | Harder | Easier |
| Flexibility | Lower | Higher |
| Python integration | Limited | Native |

## Common Applications

| Domain | Examples |
|----------|----------|
| Computer Vision | Image classification, object detection. |
| Natural Language Processing | Translation, summarization, chatbots. |
| Generative AI | Large Language Models (LLMs), image generation. |
| Speech Processing | Speech recognition, text-to-speech. |
| Reinforcement Learning | Robotics, game AI. |
| Scientific Computing | Simulations and research workloads. |

## PyTorch Ecosystem

| Library | Purpose |
|----------|----------|
| `torchvision` | Vision datasets, transforms, pretrained models. |
| `torchaudio` | Audio datasets and processing. |
| `torchtext` | Text datasets and NLP utilities. |
| `TorchServe` | Model serving and deployment. |
| `PyTorch Lightning` | High-level training framework. |
| `Hugging Face Transformers` | Pretrained LLMs and transformer models built on PyTorch. |

## PyTorch vs TensorFlow

| Feature | PyTorch | TensorFlow |
|----------|----------|-------------|
| Learning curve | Easier | Moderate |
| Python friendliness | Excellent | Good |
| Dynamic graph | Yes | Yes (TF 2.x) |
| Research popularity | Very High | High |
| Production deployment | Strong | Very Strong |
| Community adoption | Very High | Very High |

## Real-World Usage

Many modern AI systems and research projects use PyTorch as their primary deep learning framework. It is commonly used to:
- Train image classification models.
- Build recommendation systems.
- Develop chatbots and virtual assistants.
- Fine-tune Large Language Models (LLMs).
- Create generative AI applications.
- Build speech and computer vision solutions.

## Basic PyTorch Program

```python
import torch

# Create tensors
x = torch.tensor([1.0, 2.0, 3.0])
y = torch.tensor([4.0, 5.0, 6.0])

# Tensor addition
z = x + y

print(z)
```

Output:
```text
tensor([5., 7., 9.])
```

## Learning Path

```text
Python
   │
   ▼
NumPy
   │
   ▼
Tensor Basics
   │
   ▼
Autograd
   │
   ▼
Neural Networks (torch.nn)
   │
   ▼
Data Loading
   │
   ▼
Training Loop
   │
   ▼
CNNs / RNNs / Transformers
   │
   ▼
Model Deployment
```

## Related Topics

- Deep Learning
- Neural Networks
- Tensor Fundamentals
- Autograd
- Neural Network Training
- Model Deployment

## Quick Revision

- PyTorch is an open-source deep learning framework widely used for research and production AI systems.
- Tensors are the fundamental data structure used for numerical computation in PyTorch.
- Autograd automatically calculates gradients required for model training.
- `torch.nn` provides neural network layers and building blocks.
- `torch.optim` provides optimization algorithms for updating model parameters.
- PyTorch supports CPU and GPU execution for efficient model training.
- PyTorch is widely used for Computer Vision, NLP, Large Language Models (LLMs), and Generative AI.

## Next

Continue with **02-tensors.md** to learn how PyTorch tensors work, including creation, operations, dimensions, data types, and GPU acceleration.