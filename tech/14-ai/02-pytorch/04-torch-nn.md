# `torch.nn`

## Overview

`torch.nn` is a core PyTorch module that provides the building blocks needed to create and train neural networks. Instead of implementing every mathematical operation manually, developers can use ready-made layers, activation functions, and loss functions provided by `torch.nn`.

Almost every deep learning model built with PyTorch uses the `torch.nn` package.

## Definition

> **`torch.nn` is the PyTorch library used to build neural networks from reusable components.**

## Objectives

`torch.nn` provides reusable building blocks for creating, defining, and training neural networks in PyTorch.

Key objectives of `torch.nn` include:
- Build neural network architectures using reusable modules.
- Provide standard layers, activation functions, and loss functions.
- Simplify model development using high-level abstractions.
- Integrate seamlessly with Autograd and optimizers.
- Support development of modern deep learning models.

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


## Related Topics

- PyTorch Fundamentals
- Tensor Operations
- Autograd
- torch.optim
- Neural Network Training
- Deep Learning Architectures

## Quick Revision

- `torch.nn` is the PyTorch module used to define and build neural networks.
- `nn.Module` is the base class for creating custom models.
- Layers such as `nn.Linear` and `nn.Conv2d` provide reusable neural network components.
- Activation functions introduce non-linearity and allow models to learn complex patterns.
- Loss functions measure prediction errors during training.
- `torch.nn` works with Autograd for gradient calculation and `torch.optim` for parameter updates.
- CNNs, Transformers, and many LLM components are built using neural network modules.

## Next

Continue with **05-torch-optim.md** to learn how PyTorch optimizers update model parameters using gradients calculated during training.
