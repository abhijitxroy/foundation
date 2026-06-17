# Tensors

## Overview

A **Tensor** is the fundamental data structure used in PyTorch and many other deep learning frameworks. Almost everything in a deep learning model—input data, images, model parameters, and outputs—is represented as tensors.

You can think of a tensor as a generalized form of a number, vector, or matrix.

## Simple Definition

> **A tensor is a multi-dimensional array used to store and process data in machine learning and deep learning.**

## Why Do We Need Tensors?

Artificial intelligence models work with large amounts of numerical data:
- Images.
- Text.
- Audio.
- Videos.
- Sensor readings.

Tensors provide an efficient way to store and manipulate this data while taking advantage of hardware acceleration such as GPUs.

## Where Tensors Fit

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
          ▼
        Tensors
          │
          ▼
Neural Networks
```

## Understanding Dimensions

Tensors are categorized by the number of dimensions they have.

| Type | Dimensions | Example |
|------|------------|----------|
| Scalar | 0D | `5` |
| Vector | 1D | `[1, 2, 3]` |
| Matrix | 2D | `[[1, 2], [3, 4]]` |
| Tensor | 3D or Higher | Images, videos, datasets |

### Scalar (0D Tensor)

A scalar contains a single value.

```text
5
```

Example:
- Temperature.
- Age.
- Score.

### Vector (1D Tensor)

A vector is an ordered collection of values.

```text
[10, 20, 30]
```

Example:
- Coordinates.
- Daily temperatures.
- Feature values.

### Matrix (2D Tensor)

A matrix consists of rows and columns.

```text
+----+----+
| 1  | 2  |
+----+----+
| 3  | 4  |
+----+----+
```

Example:
- Spreadsheet data.
- Grayscale images.

### Higher-Dimensional Tensors

Deep learning often works with tensors containing three or more dimensions.

Examples:

| Data Type | Typical Shape |
|------------|--------------|
| Grayscale Image | Height × Width |
| Color Image | Height × Width × Channels |
| Video | Frames × Height × Width × Channels |
| Batch of Images | Batch × Height × Width × Channels |

## Tensor Shapes

Every tensor has a **shape**, which describes its dimensions.

Examples:

| Tensor | Shape |
|----------|--------|
| `5` | `[]` |
| `[1, 2, 3]` | `[3]` |
| `[[1, 2], [3, 4]]` | `[2, 2]` |
| RGB Image (224×224) | `[224, 224, 3]` |

Understanding shapes is important because neural networks expect data in specific formats.

## Tensors in Real Life

### Image

A grayscale image can be represented as a 2D tensor.

```text
+-----+-----+-----+
| 255 | 128 |  64 |
+-----+-----+-----+
| 200 | 100 |  50 |
+-----+-----+-----+
| 150 |  75 |  25 |
+-----+-----+-----+
```

Each number represents a pixel intensity.

### Color Image

A color image usually has three channels:
- Red (R)
- Green (G)
- Blue (B)

```text
Height × Width × 3
```

### Batch of Images

Neural networks usually process multiple images together.

```text
Batch Size × Height × Width × Channels
```

For example:

```text
32 × 224 × 224 × 3
```

means a batch of 32 color images.

## Tensor Operations

Tensors support many mathematical operations.

### Addition

```text
[1, 2, 3]
+
[4, 5, 6]
=
[5, 7, 9]
```

### Multiplication

```text
[1, 2, 3]
×
2
=
[2, 4, 6]
```

### Matrix Multiplication

Neural networks frequently perform matrix multiplication when processing data.

```text
Input Tensor
      │
      ▼
Weight Matrix
      │
      ▼
Output Tensor
```

## Tensors in PyTorch

PyTorch provides the `torch.Tensor` class for creating and working with tensors.

### Creating a Tensor

```python
import torch

x = torch.tensor([1, 2, 3])
print(x)
```

Output:

```text
tensor([1, 2, 3])
```

### Creating a Matrix

```python
import torch

x = torch.tensor([
    [1, 2],
    [3, 4]
])

print(x)
```

## CPU and GPU Tensors

One of the biggest advantages of PyTorch tensors is that they can run on either CPUs or GPUs.

### CPU Tensor

Runs on the computer's main processor.

### GPU Tensor

Runs on a Graphics Processing Unit, allowing thousands of operations to execute in parallel.

```text
Tensor
   │
   ├── CPU
   │
   └── GPU
```

Moving a tensor to a GPU can significantly accelerate deep learning workloads.

## Why GPUs Work Well with Tensors

Deep learning involves billions of mathematical operations on large arrays of numbers.

GPUs are designed to perform many calculations simultaneously, making them ideal for tensor computations.

| Hardware | Best For |
|-----------|-----------|
| CPU | General-purpose tasks. |
| GPU | Large-scale tensor operations and AI training. |

## Tensors and Neural Networks

Neural networks accept tensors as input, process them through multiple layers, and produce tensors as output.

```text
Input Tensor
      │
      ▼
Neural Network
      │
      ▼
Hidden Layers
      │
      ▼
Output Tensor
```

Examples:
- Image → Tensor → CNN → Prediction.
- Sentence → Token Tensor → Transformer → Response.

## Tensors and Autograd

PyTorch's **Autograd** system tracks operations performed on tensors.

When a tensor is created with `requires_grad=True`, PyTorch records the operations applied to it so that gradients can be computed automatically during training.

```python
import torch

x = torch.tensor(2.0, requires_grad=True)
y = x * x
```

Autograd builds a computation graph from these tensor operations.

## Common Tensor Terminology

| Term | Meaning |
|--------|----------|
| Tensor | Multi-dimensional array. |
| Shape | Size of each tensor dimension. |
| Dimension | Number of axes in a tensor. |
| Scalar | 0D tensor. |
| Vector | 1D tensor. |
| Matrix | 2D tensor. |
| Batch | Collection of multiple samples processed together. |
| Channel | One component of multi-channel data (for example, RGB). |

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
      ▼
Tensors
      │
      ▼
Autograd
      │
      ▼
Neural Networks
```

## Key Takeaways

- A tensor is the fundamental data structure in PyTorch.
- Tensors are generalized versions of scalars, vectors, and matrices.
- Images, text, audio, and model parameters are all represented as tensors.
- Tensors have shapes that describe their dimensions.
- PyTorch tensors can run on CPUs and GPUs.
- Autograd tracks operations performed on tensors to enable automatic differentiation.

## Quick Revision

- **Tensor** → Multi-dimensional array.
- **Scalar** → 0D tensor.
- **Vector** → 1D tensor.
- **Matrix** → 2D tensor.
- **Shape** → Size of tensor dimensions.
- **GPU** → Accelerates tensor computations.
- **`torch.tensor()`** → Creates a tensor in PyTorch.
- **`requires_grad=True`** → Enables gradient tracking.
- **Tensors are the basic building blocks of all PyTorch models.**
