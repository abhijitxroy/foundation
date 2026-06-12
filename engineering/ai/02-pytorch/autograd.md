# Autograd

## Overview

**Autograd** is PyTorch's automatic differentiation engine. It automatically calculates the gradients (derivatives) needed to train neural networks.

Without Autograd, developers would have to manually compute complex mathematical derivatives and update model parameters themselves. PyTorch handles this process automatically.

### Simple Definition

> **Autograd automatically computes how much each model parameter should change to reduce errors during training.**

## Why Do We Need Autograd?

The goal of training a machine learning model is to minimize the difference between the model's prediction and the correct answer. This difference is called the **loss**.

To reduce the loss, the model must determine:
- Which parameters caused the error.
- How much each parameter contributed.
- How each parameter should be adjusted.

Autograd performs these calculations automatically.

## The Basic Idea

Imagine a student taking a math test.

- The student answers the questions.
- The teacher compares the answers with the correct ones.
- The teacher points out the mistakes.
- The student learns from those mistakes and improves.

Similarly, in AI:
- The model makes a prediction.
- The prediction is compared with the correct answer.
- The error (loss) is calculated.
- Autograd determines how to adjust the model to reduce the error.

## How Autograd Works

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
Better Model
```

## What Are Gradients?

A **gradient** measures how much the output changes when a parameter changes slightly.

In deep learning, gradients tell the model:
- Which direction to move.
- How much to update each parameter.

The optimizer uses these gradients to improve the model.

## Computation Graph

Whenever operations are performed on tensors that require gradients, PyTorch dynamically builds a **computation graph**.

A computation graph records:
- The operations performed.
- The order of operations.
- The relationships between tensors.

Later, Autograd uses this graph to calculate gradients.

### Example

```text
x = 2
    │
    ▼
y = x × x
    │
    ▼
z = y + 3
```

PyTorch internally remembers these operations so it can compute how changes in `x` affect `z`.

## `requires_grad`

A tensor only participates in gradient computation if it is created with:

```python
import torch

x = torch.tensor(2.0, requires_grad=True)
```

Setting `requires_grad=True` tells PyTorch:

> "Track all operations performed on this tensor because it will be used during training."

## A Simple Example

```python
import torch

x = torch.tensor(2.0, requires_grad=True)

y = x * x
y.backward()

print(x.grad)
```

Output:

```text
tensor(4.)
```

### What Happened?

1. `x` is created with gradient tracking enabled.
2. `y = x × x` computes `4`.
3. `backward()` asks Autograd to compute the derivative.
4. The derivative of `x²` at `x = 2` is `2 × 2 = 4`.
5. The result is stored in `x.grad`.

## Forward Pass and Backward Pass

Training a neural network consists of two main phases.

### Forward Pass

The model receives input data and produces a prediction.

```text
Input → Neural Network → Prediction
```

### Backward Pass

Autograd calculates gradients by moving backward through the computation graph.

```text
Loss → Autograd → Compute Gradients
```

The optimizer then uses these gradients to update the model parameters.

## Backpropagation

**Backpropagation** is the algorithm used to calculate gradients through the layers of a neural network.

Autograd automatically implements backpropagation by traversing the computation graph in reverse order.

```text
Forward:
Input → Layer 1 → Layer 2 → Output

Backward:
Output Error → Layer 2 → Layer 1 → Update Weights
```

## Relationship Between Autograd and the Optimizer

Autograd itself does not update model parameters.

Its job is only to calculate gradients.

The optimizer uses those gradients to modify the model weights.

| Component | Responsibility |
|-----------|----------------|
| Autograd | Computes gradients. |
| Optimizer (`torch.optim`) | Updates model parameters. |
| Neural Network (`torch.nn`) | Defines the model structure. |

## Dynamic Computation Graph

One of PyTorch's biggest advantages is that the computation graph is created dynamically while the Python program runs.

### Benefits

- Easier debugging.
- More flexible model architectures.
- Natural Python programming style.
- Better for experimentation and research.

## Autograd in the Training Loop

Autograd is a core part of every PyTorch training loop.

```text
Load Data
     │
     ▼
Forward Pass
     │
     ▼
Compute Loss
     │
     ▼
Autograd (backward())
     │
     ▼
Optimizer Updates Weights
     │
     ▼
Repeat
```

## Real-World Example

Consider an image classification model that identifies cats and dogs.

### During Training

- The model predicts "Dog."
- The correct answer is "Cat."
- Loss is calculated.
- Autograd computes gradients.
- The optimizer adjusts the model weights.
- The model becomes slightly more accurate.

This process repeats thousands or millions of times.

### During Inference

The trained model only performs the forward pass to make predictions. Autograd is generally not needed during inference.

## Common Misconceptions

| Myth | Reality |
|------|----------|
| Autograd trains the model. | Autograd only computes gradients. |
| Autograd updates weights. | The optimizer updates weights. |
| Gradients must be calculated manually. | PyTorch computes them automatically. |
| Autograd is only for deep learning. | It can compute gradients for any tracked tensor operations. |

## Key Takeaways

- Autograd is PyTorch's automatic differentiation engine.
- It automatically computes gradients during training.
- Tensors must have `requires_grad=True` to participate in gradient tracking.
- PyTorch builds a dynamic computation graph during execution.
- Calling `backward()` starts the backpropagation process.
- Autograd computes gradients, while the optimizer updates the model parameters.

## Quick Revision

- **Autograd** → Automatic gradient calculation.
- **Gradient** → Indicates how parameters should change.
- **`requires_grad=True`** → Enable gradient tracking.
- **Computation Graph** → Records tensor operations.
- **Forward Pass** → Generate prediction.
- **Backward Pass** → Compute gradients.
- **`backward()`** → Starts backpropagation.
- **Autograd computes gradients; optimizer updates weights.**
