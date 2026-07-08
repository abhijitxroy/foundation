# Neural Networks

## Overview

A **Neural Network** is a machine learning model inspired by the way neurons in the human brain communicate. It consists of interconnected layers of simple processing units called **neurons**, which work together to learn patterns from data.

Neural networks are the foundation of **Deep Learning** and power many modern AI applications such as image recognition, speech recognition, recommendation systems, and Large Language Models (LLMs).

## Definition

> **A Neural Network is a mathematical model made of interconnected layers that learns patterns from data by adjusting internal parameters called weights.**

## Where Neural Networks Fit

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
            ├── RNNs
            └── Transformers
                     │
                     ▼
                    LLMs
```

## Objectives

Neural Networks provide the foundation for Deep Learning by enabling machines to learn complex patterns from data using interconnected computational layers.

Key objectives of Neural Networks include:
- Learn complex patterns from large and unstructured datasets.
- Automatically extract meaningful features from data.
- Enable advanced AI applications such as vision, language, and speech systems.
- Support modern Deep Learning architectures including CNNs and Transformers.
- Build adaptive models that improve through training.

## Inspiration from the Human Brain

The human brain contains billions of interconnected neurons that communicate using electrical signals.

A neural network is a simplified mathematical model inspired by this concept:
- Each artificial neuron receives inputs.
- It performs a simple calculation.
- It passes the result to the next layer.

Although inspired by biology, artificial neural networks are mathematical models, not actual brain simulations.

## Basic Structure

A neural network is organized into layers.

```text
            Input Layer
         ○    ○    ○    ○
          \   |   |   /
           \  |   |  /
            ▼ ▼   ▼ ▼
          Hidden Layer
         ○    ○    ○
          \   |   /
           \  |  /
            ▼ ▼ ▼
          Hidden Layer
         ○    ○    ○
             \ | /
              \|/
               ▼
          Output Layer
               ○
```

### Input Layer

The input layer receives the raw data.

Examples:
- Pixel values from an image.
- Numbers from a dataset.
- Words or tokens from a sentence.

### Hidden Layers

Hidden layers perform calculations and gradually learn increasingly complex patterns.

For example, when processing an image:
- First hidden layer learns edges.
- Second hidden layer learns shapes.
- Later layers learn object parts.
- Final layers recognize complete objects.

### Output Layer

The output layer produces the final prediction.

Examples:
- Spam or Not Spam.
- Cat or Dog.
- Positive or Negative sentiment.

## What is a Neuron?

A neuron is the smallest processing unit in a neural network.

It:
1. Receives input values.
2. Multiplies them by weights.
3. Adds a bias value.
4. Applies an activation function.
5. Produces an output.

```text
Inputs
 x1  x2  x3
 │   │   │
 ▼   ▼   ▼
Weights Applied
      │
      ▼
  Sum + Bias
      │
      ▼
Activation Function
      │
      ▼
    Output
```

## Weights and Biases

### Weights

Weights determine the importance of each input. During training, the model automatically adjusts these values to improve its predictions.

### Bias

A bias is an additional parameter that helps the model fit data more effectively by shifting the output when necessary.

| Component | Purpose |
|-----------|----------|
| Weight | Controls the importance of an input. |
| Bias | Provides additional flexibility for learning. |

## Activation Functions

After calculating the weighted sum, a neuron applies an **activation function**.

The activation function decides whether and how strongly a neuron should pass information to the next layer.

### ReLU (Rectified Linear Unit)

The most common activation function in modern neural networks.

```text
f(x) = max(0, x)
```

Example:

| Input | Output |
|--------|---------|
| -3 | 0 |
| -1 | 0 |
| 2 | 2 |
| 5 | 5 |

Other common activation functions include:
- Sigmoid.
- Tanh.
- Softmax.

## How a Neural Network Learns

A neural network learns by repeatedly adjusting its weights and biases based on the errors it makes.

### Training Process

```text
Training Data
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
Backpropagation
      │
      ▼
Update Weights
      │
      ▼
Repeat
```

Over many training cycles, the network gradually becomes more accurate.

## Forward Pass

The **forward pass** is the process of moving data through the network to generate a prediction.

```text
Input
  │
  ▼
Hidden Layer
  │
  ▼
Hidden Layer
  │
  ▼
Output Prediction
```

## Backpropagation

After making a prediction, the network compares it with the correct answer and calculates the error (loss).

**Backpropagation** works backward through the network to determine how each weight contributed to the error.

The gradients calculated during backpropagation are then used by the optimizer to update the weights.

```text
Forward:
Input → Hidden Layers → Output

Backward:
Loss → Update Hidden Layers → Update Input Connections
```

## Neural Networks and PyTorch

PyTorch provides the `torch.nn` module to create and train neural networks.

Typical PyTorch workflow:

```text
Input Data
     │
     ▼
Tensor
     │
     ▼
Neural Network (torch.nn)
     │
     ▼
Autograd
     │
     ▼
Optimizer
     │
     ▼
Updated Neural Network
```

PyTorch automatically handles:
- Gradient calculation.
- Backpropagation.
- Weight updates (through optimizers).

## Types of Neural Networks

| Type | Primary Use |
|--------|-------------|
| Feedforward Neural Network (FNN) | Basic prediction and classification tasks. |
| Convolutional Neural Network (CNN) | Image and video processing. |
| Recurrent Neural Network (RNN) | Sequential and time-series data. |
| Transformer | Natural language processing and LLMs. |

## Real-World Applications

| Domain | Example |
|----------|----------|
| Computer Vision | Face recognition, object detection. |
| Natural Language Processing | Chatbots, translation, summarization. |
| Healthcare | Disease diagnosis and medical imaging. |
| Finance | Fraud detection and risk analysis. |
| Recommendation Systems | Movie and product suggestions. |
| Autonomous Vehicles | Object and lane detection. |

## Neural Networks vs Traditional Machine Learning

| Feature | Traditional ML | Neural Networks |
|----------|----------------|----------------|
| Feature extraction | Often manual | Automatic |
| Model complexity | Lower | Higher |
| Data requirement | Moderate | Large |
| Performance on images/text | Limited | Excellent |
| Scalability | Moderate | High |

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
      ├── CNNs
      ├── RNNs
      └── Transformers
              │
              ▼
             LLMs
```


## Related Topics

- Deep Learning
- Machine Learning
- AI Inference and Training
- CNNs
- Transformers
- PyTorch

## Quick Revision

- Neural Networks are mathematical models inspired by biological neurons.
- Networks consist of input layers, hidden layers, and output layers.
- Neurons use weights, biases, and activation functions to process information.
- Training uses forward pass, loss calculation, backpropagation, and optimization.
- Neural Networks are the foundation for Deep Learning architectures such as CNNs and Transformers.
- Modern AI systems including Computer Vision, Speech Recognition, and Large Language Models (LLMs) rely on neural network principles.

## Next

Continue with **../02-pytorch/01-pytorch.md** to learn how PyTorch provides the tools and frameworks required to build, train, and deploy modern Deep Learning models.
