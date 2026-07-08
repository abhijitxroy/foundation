# `torch.optim`

## Overview

`torch.optim` is a core PyTorch module that provides optimization algorithms used to update a neural network's parameters during training. After the model makes a prediction and Autograd computes the gradients, an optimizer uses those gradients to adjust the model's weights and reduce errors.

Without an optimizer, a neural network would never improve, no matter how much data it sees.

## Definition

> **`torch.optim` is the PyTorch module responsible for updating model parameters during training.**

## Objectives

`torch.optim` provides optimization algorithms that update neural network parameters using gradients calculated during training.

Key objectives of `torch.optim` include:
- Update model parameters to reduce prediction errors.
- Apply gradient-based optimization algorithms.
- Control learning behavior through hyperparameters such as learning rate.
- Work together with Autograd and `torch.nn` during training.
- Improve model performance through iterative parameter updates.

## Where `torch.optim` Fits

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
            Update Model Weights
```

## Relationship with Other PyTorch Components

| Component | Responsibility |
|------------|---------------|
| `torch.Tensor` | Stores data and model parameters. |
| `torch.nn` | Defines the neural network. |
| `torch.autograd` | Computes gradients. |
| `torch.optim` | Updates model parameters. |

Together, these modules form the core of a PyTorch training pipeline.

## How an Optimizer Works

A simplified training cycle looks like this:

```text
Input Data
     │
     ▼
Neural Network
     │
     ▼
Prediction
     │
     ▼
Calculate Loss
     │
     ▼
Autograd Computes Gradients
     │
     ▼
Optimizer Updates Weights
     │
     ▼
Improved Model
```

The optimizer uses the gradients to determine:
- Which direction to move the parameters.
- How much to change them.

## What Are Model Parameters?

Model parameters are the values the neural network learns during training.

Examples:
- Weights.
- Biases.

Initially, these values are random. Over time, the optimizer adjusts them so that the model makes more accurate predictions.

## Learning Rate

One of the most important optimizer settings is the **learning rate** (`lr`).

The learning rate determines how large each parameter update should be.

### Small Learning Rate

- Slow but stable learning.
- May require many training iterations.

### Large Learning Rate

- Faster updates.
- May overshoot the best solution and become unstable.

```text
Small Learning Rate  → Slow Progress
Large Learning Rate  → Fast but Risky
Balanced Learning Rate → Efficient Learning
```

## Common Optimizers

PyTorch provides several built-in optimization algorithms.

| Optimizer | Description |
|------------|-------------|
| `SGD` | Stochastic Gradient Descent; simple and widely used. |
| `Adam` | Adaptive optimizer that works well for many problems. |
| `AdamW` | Improved version of Adam with better weight regularization. |
| `RMSprop` | Optimizer designed for adaptive learning rates. |
| `Adagrad` | Adapts learning rates based on parameter history. |

### Stochastic Gradient Descent (SGD)

SGD updates the model parameters using the gradients calculated from the current batch of data.

Characteristics:
- Simple and efficient.
- Frequently used for image classification tasks.
- Often requires careful learning rate tuning.

### Adam

Adam (Adaptive Moment Estimation) is one of the most popular optimizers in deep learning.

Advantages:
- Automatically adapts learning rates.
- Usually converges faster than SGD.
- Good default choice for many AI projects.

## Creating an Optimizer

In PyTorch, an optimizer is created by passing the model parameters and a learning rate.

Example:

```python
import torch.optim as optim

optimizer = optim.Adam(
    model.parameters(),
    lr=0.001
)
```

Here:
- `model.parameters()` provides the weights and biases to update.
- `lr=0.001` sets the learning rate.

## The Optimizer in the Training Loop

A typical PyTorch training loop includes the optimizer as follows:

```text
Load Data
     │
     ▼
Forward Pass
     │
     ▼
Calculate Loss
     │
     ▼
backward()
     │
     ▼
Optimizer Updates Weights
     │
     ▼
Repeat
```

The optimizer is responsible for the parameter update step.

## `zero_grad()`

Gradients accumulate in PyTorch by default. Before processing a new batch, the old gradients should be cleared.

This is done using:

```python
optimizer.zero_grad()
```

Without clearing the gradients, updates from previous iterations would continue to accumulate.

## `step()`

After Autograd computes the gradients, the optimizer updates the model parameters using:

```python
optimizer.step()
```

The basic sequence is:

```python
optimizer.zero_grad()
loss.backward()
optimizer.step()
```

### What Happens?

1. `zero_grad()` clears old gradients.
2. `backward()` computes new gradients.
3. `step()` updates the model weights.

## Complete Optimizer Workflow

```text
Input Data
     │
     ▼
Forward Pass
     │
     ▼
Compute Loss
     │
     ▼
optimizer.zero_grad()
     │
     ▼
loss.backward()
     │
     ▼
optimizer.step()
     │
     ▼
Updated Model
```

## `torch.optim` and Autograd

Autograd and the optimizer work closely together.

```text
              +----------------------+
              |      torch.nn        |
              |   Defines the Model  |
              +----------+-----------+
                         │
                         ▼
              +----------------------+
              |   torch.autograd     |
              | Computes Gradients   |
              +----------+-----------+
                         │
                         ▼
              +----------------------+
              |    torch.optim       |
              |  Updates Parameters  |
              +----------------------+
```

- `torch.nn` defines the model.
- Autograd computes the gradients.
- `torch.optim` updates the model parameters.

## Real-World Example

Imagine teaching a student.

- The student answers a question.
- The teacher checks the answer.
- The teacher explains the mistake.
- The student adjusts their understanding.

In this analogy:
- Neural Network → Student.
- Loss Function → Exam result.
- Autograd → Identifies mistakes.
- Optimizer → Helps the student improve.

## Common Optimizer Terminology

| Term | Meaning |
|--------|----------|
| Optimizer | Algorithm that updates model parameters. |
| Learning Rate | Size of each update step. |
| Weight | Learned model parameter. |
| Gradient | Information about how to reduce error. |
| `zero_grad()` | Clears previous gradients. |
| `backward()` | Computes gradients. |
| `step()` | Updates the model parameters. |

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
- torch.nn
- Neural Network Training
- Deep Learning

## Quick Revision

- `torch.optim` provides optimization algorithms used to update neural network parameters.
- Optimizers use gradients calculated by Autograd to improve model predictions.
- Common optimizers include SGD, Adam, AdamW, RMSprop, and Adagrad.
- Learning rate controls the size of each parameter update.
- `optimizer.zero_grad()` clears previous gradients.
- `loss.backward()` calculates gradients through backpropagation.
- `optimizer.step()` updates model parameters.
- `torch.nn`, Autograd, and `torch.optim` together form the core PyTorch training workflow.

## Next

Continue with **06-training-loop.md** to learn how PyTorch combines data loading, forward pass, loss calculation, backpropagation, and optimization into a complete model training workflow.
