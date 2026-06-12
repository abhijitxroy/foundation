# Convolutional Neural Networks (CNN)

## Overview

A **Convolutional Neural Network (CNN)** is a type of deep learning model designed primarily for processing image and video data. CNNs automatically learn important visual features such as edges, shapes, textures, and objects without requiring manual feature engineering.

CNNs are widely used in:
- Image classification.
- Object detection.
- Face recognition.
- Medical image analysis.
- Autonomous vehicles.
- Video analytics.

## Simple Definition

> **A CNN is a neural network that automatically learns patterns from images by applying small filters across the input data.**

## Why Do We Need CNNs?

Traditional neural networks can process images, but they become inefficient as image sizes grow.

For example:
- A grayscale image of **100 × 100** pixels contains **10,000** input values.
- A color image of **100 × 100** pixels contains **30,000** input values (RGB).

Connecting every pixel directly to every neuron would require a huge number of parameters, making training slow and memory intensive.

CNNs solve this problem by:
- Looking at small local regions of an image.
- Reusing the same filters across the entire image.
- Automatically learning useful visual features.

## How a CNN Works

```text
Input Image
     │
     ▼
Convolution Layer
     │
     ▼
Activation Function (ReLU)
     │
     ▼
Pooling Layer
     │
     ▼
Convolution Layer
     │
     ▼
Pooling Layer
     │
     ▼
Flatten
     │
     ▼
Fully Connected Layer
     │
     ▼
Prediction
```

## Main Building Blocks

### Input Layer

The input layer receives the image data.

Examples:
- Grayscale image: `28 × 28 × 1`
- Color image: `224 × 224 × 3`

Each pixel value becomes part of the model's input.

## Convolution Layer

The convolution layer is the core component of a CNN.

It uses a small matrix called a **filter** (or **kernel**) that slides across the image and detects specific patterns.

Common patterns learned include:
- Horizontal edges.
- Vertical edges.
- Corners.
- Curves.
- Textures.

### Example

```text
Image
+-----------------+
| ░ ░ █ █ ░ ░ ░  |
| ░ █ █ █ ░ ░ ░  |
| █ █ █ ░ ░ ░ ░  |
+-----------------+

        │
        ▼

Apply Small Filter

        │
        ▼

Feature Map
```

The output produced by a convolution operation is called a **feature map**.

## Filter (Kernel)

A filter is a small grid of numbers that scans across the image.

For example, a `3 × 3` filter:

```text
+---+---+---+
| 1 | 0 |-1 |
+---+---+---+
| 1 | 0 |-1 |
+---+---+---+
| 1 | 0 |-1 |
+---+---+---+
```

During training, the CNN automatically learns the best filter values for the task.

## Feature Maps

A feature map is the output generated after applying a filter to an image.

Different filters detect different kinds of features:
- One filter may detect edges.
- Another may detect curves.
- Another may detect textures.

As layers become deeper, the network learns increasingly complex patterns.

```text
Pixels
   │
   ▼
Edges
   │
   ▼
Shapes
   │
   ▼
Object Parts
   │
   ▼
Complete Objects
```

## Activation Function (ReLU)

After convolution, an activation function is applied.

The most common activation function is **ReLU (Rectified Linear Unit)**.

### ReLU Formula

```text
f(x) = max(0, x)
```

ReLU replaces negative values with zero while keeping positive values unchanged.

Example:

| Input | Output |
|--------|---------|
| -5 | 0 |
| -1 | 0 |
| 2 | 2 |
| 8 | 8 |

Benefits of ReLU:
- Faster training.
- Simpler computation.
- Helps deep networks learn complex patterns.

## Pooling Layer

Pooling reduces the size of feature maps while preserving the most important information.

This decreases:
- Memory usage.
- Number of computations.
- Risk of overfitting.

### Max Pooling

The most common type is **Max Pooling**, which selects the largest value from a small region.

Example:

Input:

```text
+----+----+
|  2 |  8 |
+----+----+
|  5 |  3 |
+----+----+
```

After `2 × 2` Max Pooling:

```text
8
```

## Flatten Layer

After several convolution and pooling operations, the multi-dimensional feature maps are converted into a one-dimensional vector.

```text
Feature Maps
+---------+
| [][] [] |
| [][] [] |
+---------+
      │
      ▼
Flatten
      │
      ▼
[1, 4, 2, 7, 3, ...]
```

This vector becomes the input for the final classification layers.

## Fully Connected Layer

A fully connected (dense) layer works like a standard neural network layer.

It combines all the extracted features and produces the final prediction.

Example outputs:
- Cat.
- Dog.
- Car.
- Airplane.

## CNN Training Process

```text
Training Images
       │
       ▼
Convolution + ReLU
       │
       ▼
Pooling
       │
       ▼
Feature Extraction
       │
       ▼
Fully Connected Layers
       │
       ▼
Prediction
       │
       ▼
Calculate Loss
       │
       ▼
Autograd + Backpropagation
       │
       ▼
Update Filters and Weights
       │
       ▼
Repeat
```

## CNN vs Traditional Neural Network

| Feature | Traditional Neural Network | CNN |
|----------|--------------------------|-----|
| Input handling | Uses all pixels directly | Uses local filters |
| Parameter count | Very large | Much smaller |
| Feature extraction | Manual or implicit | Automatic |
| Best suited for | Structured/tabular data | Images and videos |
| Spatial awareness | Limited | Excellent |

## Real-World Applications

| Domain | Example |
|----------|----------|
| Face Recognition | Phone face unlock systems. |
| Medical Imaging | Tumor and disease detection. |
| Autonomous Vehicles | Traffic sign and pedestrian detection. |
| Manufacturing | Product quality inspection. |
| Security | Surveillance and object tracking. |
| Social Media | Automatic photo tagging. |

## CNN and Computer Vision

CNNs are the foundation of many computer vision systems.

```text
Computer Vision
        │
        ├── Image Classification
        ├── Object Detection
        ├── Face Recognition
        ├── Image Segmentation
        └── Video Analysis
                 │
                 ▼
                CNN
```

## CNN in PyTorch

PyTorch provides CNN building blocks through the `torch.nn` module.

Common layers include:
- `nn.Conv2d` — Convolution layer.
- `nn.ReLU` — Activation function.
- `nn.MaxPool2d` — Pooling layer.
- `nn.Flatten` — Flatten feature maps.
- `nn.Linear` — Fully connected layer.

A typical CNN model combines these layers to process images and make predictions.

## Relationship to Other AI Topics

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
          ▼
Convolutional Neural Networks (CNNs)
          │
          ▼
Computer Vision Applications
```

## Key Takeaways

- CNN stands for **Convolutional Neural Network**.
- CNNs are specialized neural networks designed for image and video processing.
- They automatically learn features such as edges, textures, and objects.
- The main components are convolution, ReLU, pooling, flatten, and fully connected layers.
- CNNs require far fewer parameters than traditional fully connected networks for image tasks.
- CNNs are the backbone of many modern computer vision applications.

## Quick Revision

- **CNN** → Neural network for images.
- **Filter (Kernel)** → Small matrix used to detect patterns.
- **Convolution** → Applies filters to the input image.
- **Feature Map** → Output of a convolution operation.
- **ReLU** → Activation function that keeps positive values.
- **Pooling** → Reduces feature map size.
- **Flatten** → Converts feature maps into a vector.
- **Fully Connected Layer** → Produces the final prediction.
- **CNNs are primarily used for computer vision tasks.**
