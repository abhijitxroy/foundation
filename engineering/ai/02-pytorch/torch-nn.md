# `torch.nn`

## Overview

`torch.nn` is a core PyTorch module that provides the building blocks needed to create and train neural networks. Instead of implementing every mathematical operation manually, developers can use ready-made layers, activation functions, and loss functions provided by `torch.nn`.

Almost every deep learning model built with PyTorch uses the `torch.nn` package.

## Simple Definition

> **`torch.nn` is the PyTorch library used to build neural networks from reusable components.**

## Why Do We Need `torch.nn`?

A neural network consists of many common components:
- Layers.
- Neurons.
- Activation functions.
- Loss functions.
- Model definitions.

Without `torch.nn`, developers would need to manually implement these components using low-level tensor operations.

`torch.nn` simplifies model development by providing pre-built modules that can be combined to create complex neural networks.

## Where `torch.nn` Fits

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
PyTorch
          │
          ├── Tensors
          ├── Autograd
          ├── torch.nn
          └── torch.optim
                    │
                    ▼
             Train Neural Network
```

## Relationship with Other PyTorch Components

| Component | Responsibility |
|------------|---------------|
| `torch.Tensor` | Stores and processes data. |
| `torch.autograd` | Automatically computes gradients. |
| `torch.nn` | Defines the neural network. |
| `torch.optim` | Updates model parameters during training. |

A typical training workflow combines all of these modules together.

## Building Blocks of `torch.nn`

### Layers

Layers are the main components of a neural network. Each layer receives input data, performs a computation, and passes the result to the next layer.

Common layer types include:

| Layer | Purpose |
|---------|----------|
| `nn.Linear` | Fully connected (dense) layer. |
| `nn.Conv2d` | Convolution layer for images. |
| `nn.MaxPool2d` | Pooling layer for CNNs. |
| `nn.Embedding` | Converts tokens into vector representations. |

### Activation Functions

Activation functions introduce non-linearity into the network, allowing it to learn complex patterns.

Common activation functions:

| Function | Description |
|-----------|-------------|
| `nn.ReLU` | Most commonly used activation function. |
| `nn.Sigmoid` | Produces outputs between 0 and 1. |
| `nn.Tanh` | Produces outputs between -1 and 1. |
| `nn.Softmax` | Converts outputs into probabilities. |

Example:

```text
Input
  │
  ▼
Linear Layer
  │
  ▼
ReLU Activation
  │
  ▼
Next Layer
```

### Loss Functions

A loss function measures how far the model's prediction is from the correct answer.

During training:
1. The model generates a prediction.
2. The loss function calculates the error.
3. Autograd computes gradients.
4. The optimizer updates the model.

Common loss functions:

| Loss Function | Typical Use |
|---------------|-------------|
| `nn.MSELoss` | Regression problems. |
| `nn.CrossEntropyLoss` | Multi-class classification. |
| `nn.BCELoss` | Binary classification. |

## Defining a Model

In PyTorch, a neural network is typically created by defining a class that inherits from `nn.Module`.

```python
import torch.nn as nn

class SimpleModel(nn.Module):
    def __init__(self):
        super().__init__()
        self.fc1 = nn.Linear(4, 8)
        self.relu = nn.ReLU()
        self.fc2 = nn.Linear(8, 2)

    def forward(self, x):
        x = self.fc1(x)
        x = self.relu(x)
        x = self.fc2(x)
        return x
```

### What Happens Here?

- `nn.Module` is the base class for all PyTorch models.
- `nn.Linear` creates fully connected layers.
- `nn.ReLU` adds non-linearity.
- The `forward()` method defines how data flows through the network.

## The Forward Pass

The `forward()` function describes how input data moves through the model.

```text
Input Tensor
      │
      ▼
Linear Layer
      │
      ▼
ReLU
      │
      ▼
Linear Layer
      │
      ▼
Prediction
```

When the model is called, PyTorch automatically executes the `forward()` method.

## How `torch.nn` Works with Autograd

Every operation performed inside a `torch.nn` model is tracked by Autograd.

```text
Input Tensor
      │
      ▼
torch.nn Model
      │
      ▼
Prediction
      │
      ▼
Loss Function
      │
      ▼
Autograd
      │
      ▼
Compute Gradients
```

The gradients are later used by the optimizer to update the model parameters.

## How `torch.nn` Works with `torch.optim`

`torch.nn` defines the structure of the model, while `torch.optim` is responsible for improving it.

```text
          +------------------+
          |   torch.nn       |
          | Defines Model    |
          +---------+--------+
                    │
                    ▼
          +------------------+
          |   Autograd       |
          | Compute Gradient |
          +---------+--------+
                    │
                    ▼
          +------------------+
          |  torch.optim     |
          | Update Weights   |
          +------------------+
```

## Common `torch.nn` Modules

| Module | Purpose |
|----------|----------|
| `nn.Module` | Base class for all models. |
| `nn.Linear` | Fully connected layer. |
| `nn.Conv2d` | Convolution layer. |
| `nn.ReLU` | Activation function. |
| `nn.MaxPool2d` | Pooling operation. |
| `nn.Flatten` | Converts multi-dimensional data into a vector. |
| `nn.Sequential` | Builds models by stacking layers. |
| `nn.CrossEntropyLoss` | Classification loss function. |

## `nn.Sequential`

For simple models, PyTorch provides `nn.Sequential`, which allows layers to be stacked together without defining a custom class.

Example:

```python
import torch.nn as nn

model = nn.Sequential(
    nn.Linear(4, 8),
    nn.ReLU(),
    nn.Linear(8, 2)
)
```

The data automatically flows through the layers in the specified order.

## Typical PyTorch Training Flow

```text
Dataset
    │
    ▼
Convert to Tensors
    │
    ▼
Build Model (torch.nn)
    │
    ▼
Forward Pass
    │
    ▼
Calculate Loss
    │
    ▼
Autograd (backward)
    │
    ▼
Optimizer (torch.optim)
    │
    ▼
Update Model Parameters
    │
    ▼
Repeat
```

## Real-World Examples

| Application | `torch.nn` Components Used |
|--------------|---------------------------|
| Image Classification | `nn.Conv2d`, `nn.ReLU`, `nn.Linear` |
| Chatbot | `nn.Embedding`, Transformer layers |
| Sentiment Analysis | `nn.Linear`, `nn.CrossEntropyLoss` |
| Face Recognition | CNN layers and activation functions |
| LLMs | Transformer blocks built using `nn.Module` |

## Relationship to Other AI Topics

```text
AI Overview
      │
      ▼
Machine Learning
      │
      ▼
Deep Learning
      │
      ▼
PyTorch
      │
      ├── Tensors
      ├── Autograd
      ├── torch.nn
      └── torch.optim
               │
               ▼
         Training Loop
               │
               ▼
      CNNs / Transformers / LLMs
```

## Key Takeaways

- `torch.nn` is the PyTorch module used to build neural networks.
- It provides ready-made layers, activation functions, and loss functions.
- `nn.Module` is the base class for all PyTorch models.
- The `forward()` method defines how data moves through the model.
- `torch.nn` works together with Autograd and `torch.optim` during training.
- Most modern AI models built with PyTorch are created using `torch.nn`.

## Quick Revision

- **`torch.nn`** → Build neural networks.
- **`nn.Module`** → Base class for PyTorch models.
- **`nn.Linear`** → Fully connected layer.
- **`nn.Conv2d`** → Convolution layer.
- **`nn.ReLU`** → Common activation function.
- **`nn.CrossEntropyLoss`** → Common classification loss.
- **`forward()`** → Defines data flow through the network.
- **`nn.Sequential`** → Simple way to stack layers.
- **`torch.nn` defines the model; Autograd computes gradients; `torch.optim` updates the weights.**
