# Training Loop

## Overview

A **Training Loop** is the sequence of steps that a machine learning model repeatedly performs to learn from data. During each iteration, the model makes a prediction, measures its error, updates its parameters, and gradually improves its performance.

The training loop combines the major PyTorch components:
- Tensors.
- `torch.nn`.
- Autograd.
- `torch.optim`.

Every deep learning model, from a simple classifier to a Large Language Model (LLM), follows the same basic training cycle.

## Simple Definition

> **A training loop is the repeated process of making predictions, calculating errors, updating model parameters, and improving the model.**

## Why Do We Need a Training Loop?

A neural network starts with random weights, so its initial predictions are usually poor.

The training loop allows the model to:
- Learn from examples.
- Measure mistakes.
- Adjust its weights.
- Produce better predictions over time.

Without a training loop, a model would never improve.

## Where the Training Loop Fits

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
          ├── torch.nn
          ├── Autograd
          └── torch.optim
                    │
                    ▼
              Training Loop
                    │
                    ▼
             Trained AI Model
```

## The Big Picture

```text
Training Data
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
Compute Gradients
      │
      ▼
Optimizer Updates Weights
      │
      ▼
Repeat
```

The loop repeats many times until the model reaches an acceptable level of accuracy.

## Main Steps in a Training Loop

### 1. Load Training Data

The model receives a batch of training examples.

Examples:
- Images.
- Text.
- Audio.
- Numerical data.

The data is usually loaded using a `DataLoader`.

### 2. Forward Pass

The input data flows through the neural network to produce a prediction.

```text
Input Data
     │
     ▼
Neural Network
     │
     ▼
Prediction
```

At this stage, the model simply uses its current weights to generate an output.

### 3. Calculate Loss

The model's prediction is compared with the correct answer.

The difference between them is called the **loss** or **error**.

Examples of common loss functions:
- `nn.CrossEntropyLoss()`
- `nn.MSELoss()`
- `nn.BCELoss()`

```text
Prediction
     │
     ▼
Compare with Correct Answer
     │
     ▼
Loss Value
```

A lower loss generally indicates better model performance.

### 4. Backward Pass

Autograd calculates the gradients for every trainable parameter.

This process is called **backpropagation**.

```text
Loss
  │
  ▼
Autograd
  │
  ▼
Gradients
```

The gradients indicate:
- Which direction to update the weights.
- How much each weight contributed to the error.

### 5. Update Model Parameters

The optimizer uses the gradients to modify the model's weights.

```text
Gradients
    │
    ▼
Optimizer
    │
    ▼
Updated Weights
```

This step makes the model slightly better than before.

### 6. Repeat

The same sequence is repeated for every batch and every epoch until training is complete.

## Complete Training Loop Workflow

```text
Load Batch
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
zero_grad()
    │
    ▼
backward()
    │
    ▼
optimizer.step()
    │
    ▼
Next Batch
```

## The Three Most Important Commands

Every PyTorch training loop typically contains these three operations:

### `optimizer.zero_grad()`

Clears gradients from the previous iteration.

### `loss.backward()`

Runs Autograd and computes gradients for all trainable parameters.

### `optimizer.step()`

Uses the computed gradients to update the model weights.

The order is important:

```python
optimizer.zero_grad()
loss.backward()
optimizer.step()
```

## Epochs and Batches

### Batch

A batch is a small subset of the training dataset processed at one time.

Example:
- Dataset size: 10,000 images.
- Batch size: 100 images.
- Number of batches: 100.

### Epoch

An epoch means the model has processed the entire training dataset once.

```text
Dataset
   │
   ├── Batch 1
   ├── Batch 2
   ├── Batch 3
   └── ...
        │
        ▼
      One Epoch
```

Training usually requires many epochs.

## Relationship Between Core PyTorch Components

```text
Training Data
      │
      ▼
Tensor
      │
      ▼
torch.nn Model
      │
      ▼
Forward Pass
      │
      ▼
Loss Function
      │
      ▼
Autograd (backward)
      │
      ▼
torch.optim (step)
      │
      ▼
Updated Model
```

## Simple PyTorch Example

```python
for inputs, labels in train_loader:

    # Clear previous gradients
    optimizer.zero_grad()

    # Forward pass
    outputs = model(inputs)

    # Calculate loss
    loss = criterion(outputs, labels)

    # Compute gradients
    loss.backward()

    # Update model weights
    optimizer.step()
```

Although real-world training loops may be more complex, most of them follow this same structure.

## Real-World Analogy

Imagine a student preparing for an exam.

1. Read a question.
2. Give an answer.
3. Compare with the correct answer.
4. Understand the mistake.
5. Improve knowledge.
6. Try the next question.

This cycle repeats until the student performs well.

| Student Learning | AI Training |
|------------------|------------|
| Answer question | Make prediction |
| Check answer | Calculate loss |
| Understand mistake | Compute gradients |
| Learn from error | Update weights |
| Practice again | Repeat training loop |

## Training Loop vs Inference

| Feature | Training Loop | Inference |
|----------|--------------|------------|
| Uses training data | Yes | No |
| Calculates loss | Yes | No |
| Computes gradients | Yes | No |
| Updates weights | Yes | No |
| Runs backpropagation | Yes | No |
| Purpose | Learn | Make predictions |

Inference uses only the forward pass, while the training loop performs both forward and backward passes.

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
Neural Networks
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

- A training loop is the repeated process that teaches a neural network.
- The model performs a forward pass to make predictions.
- A loss function measures prediction error.
- Autograd computes gradients during the backward pass.
- The optimizer updates the model weights.
- The cycle repeats across batches and epochs until the model learns.

## Quick Revision

- **Training Loop** → Process that teaches the model.
- **Forward Pass** → Generate prediction.
- **Loss Function** → Measure prediction error.
- **Backward Pass** → Compute gradients.
- **`optimizer.zero_grad()`** → Clear old gradients.
- **`loss.backward()`** → Calculate gradients.
- **`optimizer.step()`** → Update model parameters.
- **Batch** → Small subset of training data.
- **Epoch** → One complete pass through the dataset.
- **Training = Forward Pass + Backward Pass + Weight Update.**
