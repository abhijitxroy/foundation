# Model Deployment

## Overview

**Model Deployment** is the process of making a trained AI or machine learning model available for real-world use. After a model has been trained and evaluated, it must be integrated into an application or service so that users can send inputs and receive predictions.

Without deployment, an AI model remains only an experiment running on a developer's machine.

## Definition

> **Model Deployment is the process of taking a trained AI model and making it available for real-world applications.**

## Objectives

- Understand the purpose of model deployment.
- Learn how trained models are exposed for inference.
- Explore deployment architectures and serving patterns.
- Compare cloud and edge deployment.
- Prepare for production AI engineering workflows.

## Where Model Deployment Fits

```text
Collect Data
      │
      ▼
Train Model
      │
      ▼
Evaluate Model
      │
      ▼
Save Trained Model
      │
      ▼
Deploy Model
      │
      ▼
Inference
      │
      ▼
User or Application
```

## Training vs Deployment

| Phase | Purpose |
|---------|----------|
| Training | Teach the model using data. |
| Evaluation | Measure model accuracy and performance. |
| Deployment | Make the trained model available to users. |
| Inference | Use the deployed model to generate predictions. |

A model is usually trained once but may serve millions of inference requests after deployment.

## Basic Deployment Workflow

```text
User Input
     │
     ▼
Application
     │
     ▼
API Request
     │
     ▼
Deployed AI Model
     │
     ▼
Run Inference
     │
     ▼
Prediction
     │
     ▼
Return Response
```

## Model Deployment Lifecycle

```text
Build Model
     │
     ▼
Train Model
     │
     ▼
Test and Evaluate
     │
     ▼
Save Model
     │
     ▼
Deploy to Server or Device
     │
     ▼
Accept User Requests
     │
     ▼
Run Inference
     │
     ▼
Monitor and Update
```

## How Is a Model Deployed?

A trained model is usually saved to a file and then loaded by an application.

The application exposes the model through an API or service that other programs can call.

Example flow:
1. User sends a request.
2. The application receives the request.
3. The AI model processes the input.
4. The model generates a prediction.
5. The result is returned to the user.

## Model Serving

**Model Serving** is the process of hosting a deployed model so that it can handle inference requests.

A model server:
- Loads the trained model into memory.
- Receives requests from applications.
- Runs inference.
- Returns predictions.

## APIs and AI Models

Most deployed AI models are accessed through APIs.

```text
Client Application
        │
        ▼
   HTTP / REST API
        │
        ▼
  AI Model Server
        │
        ▼
   Trained Model
        │
        ▼
   Prediction Result
```

Examples:
- Mobile apps.
- Web applications.
- Chatbots.
- Internal enterprise services.

## Cloud vs Edge Deployment

### Cloud Deployment

The AI model runs on remote servers or cloud infrastructure.

**Advantages**
- Powerful hardware.
- Easy scaling.
- Centralized management.

**Examples**
- ChatGPT.
- Cloud image recognition services.
- Online recommendation engines.

### Edge Deployment

The AI model runs directly on the local device.

**Advantages**
- Low latency.
- Works without internet connectivity.
- Better privacy for sensitive data.

**Examples**
- Smartphone face unlock.
- Smart cameras.
- IoT devices.

## Cloud vs Edge Comparison

| Feature | Cloud Deployment | Edge Deployment |
|-----------|-----------------|----------------|
| Model Location | Remote server | Local device |
| Internet Required | Usually yes | Often no |
| Latency | Higher | Lower |
| Compute Power | Very high | Limited |
| Scalability | Easy | Device dependent |

## Model Deployment with PyTorch

PyTorch is commonly used to train AI models. After training, the model can be saved and later loaded for inference.

Typical workflow:

```text
PyTorch Model
      │
      ▼
Train Model
      │
      ▼
Save Model File
      │
      ▼
Load Model in Application
      │
      ▼
Deploy for Inference
```

PyTorch models are often deployed using:
- Python applications.
- REST APIs.
- AI inference servers.
- Cloud platforms.

## Hugging Face and Deployment

Many pre-trained models from Hugging Face can be deployed directly without retraining.

Developers can:
- Download a pre-trained model.
- Integrate it into an application.
- Expose it through an API.
- Scale it for production workloads.

This significantly reduces AI development time.

## Deployment Architectures

### Simple Deployment

```text
User
 │
 ▼
Application
 │
 ▼
AI Model
 │
 ▼
Prediction
```

### Production Deployment

```text
User
 │
 ▼
Load Balancer
 │
 ▼
Application Server
 │
 ▼
AI Model Server
 │
 ▼
Trained Model
 │
 ▼
Database / Storage
```

## Monitoring Deployed Models

Deployment is not the final step. AI models must be monitored continuously.

Common monitoring tasks:
- API response time.
- Inference latency.
- Prediction accuracy.
- Hardware utilization.
- Model drift.
- Error rates.

If performance degrades, the model may need retraining using newer data.

## Common Deployment Challenges

| Challenge | Description |
|------------|-------------|
| Scalability | Handling many simultaneous users. |
| Latency | Returning predictions quickly. |
| Resource Usage | Managing CPU, GPU, and memory consumption. |
| Model Drift | Accuracy decreases as real-world data changes. |
| Version Management | Updating models without disrupting users. |
| Security | Protecting models and user data. |

## Real-World Examples

| Application | Deployment Example |
|--------------|-------------------|
| Chatbot | Deployed as a cloud API service. |
| Face Recognition | Runs on a mobile device. |
| Recommendation Engine | Integrated into an e-commerce website. |
| Medical AI | Deployed in hospital diagnostic systems. |
| AI Coding Assistant | Hosted in the cloud and accessed by IDEs. |

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
Training
      │
      ▼
Inference
      │
      ▼
Model Deployment
      │
      ▼
Real-World AI Applications
```

## Related Topics

- AI Engineering
- LLM Applications
- Hugging Face
- Responsible AI
- MLOps

## Quick Revision

- Model deployment makes a trained AI model available for real-world use.
- Deployment usually follows training and evaluation.
- Most deployed models are accessed through APIs.
- Models can be deployed in the cloud or on edge devices.
- PyTorch and Hugging Face provide tools for deploying AI models.
- Monitoring and updating deployed models are important parts of the AI lifecycle.

## Next

Continue with **06-responsible-ai.md** to learn how fairness, transparency, privacy, security, and accountability are incorporated throughout the AI lifecycle to build trustworthy and production-ready AI systems.
