# AI Q&A

## AI Basics
- What is Artificial Intelligence?
- What is the difference between AI, ML, and Deep Learning?
- Why is Deep Learning a subset of Machine Learning?

## Training and Inference
- What is training?
- What is inference?
- What changes during training but not during inference?

## Neural Networks
- What is a neural network?
- What are weights and biases?
- What is an activation function?
- What is backpropagation?

## PyTorch
- What is PyTorch?
- What is a tensor?
- What is Autograd?
- What does `torch.nn` do?
- What does `torch.optim` do?
- What is the purpose of the training loop?

## Training Loop
- What are the main steps of a training loop?
- Why do we call `optimizer.zero_grad()`?
- What does `loss.backward()` do?
- What does `optimizer.step()` do?

## Model Architectures
- Why are CNNs good for image processing?
- What problem do Transformers solve?
- What is self-attention?
- How are LLMs related to Transformers?

## Hugging Face and Deployment
- What is Hugging Face?
- What is the difference between inference and fine-tuning?
- What is model deployment?
- What is the difference between cloud and edge deployment?

## Mixed Revision
- Explain the complete AI hierarchy.
- Explain the relationship between tensors, Autograd, `torch.nn`, and `torch.optim`.
- Walk through the complete training loop from input data to updated model weights.
- Explain how a user prompt becomes an LLM response.

---

# AI Questions

---

# AI Basics

1. What is Artificial Intelligence?
2. What kinds of problems does AI try to solve?
3. What is the difference between traditional programming and AI?
4. What is Machine Learning?
5. Why is Machine Learning a subset of AI?
6. What is Deep Learning?
7. Why is Deep Learning a subset of Machine Learning?
8. What is a model?
9. What is a dataset?
10. What is a feature?
11. What is a label?
12. What is the difference between structured and unstructured data?
13. What are some real-world applications of AI?
14. What are the major branches of AI?
15. Explain the AI → ML → DL hierarchy.

---

# Training vs Inference

16. What is training?
17. What is inference?
18. Why are training and inference different phases?
19. What changes during training?
20. What remains fixed during inference?
21. Why is training usually more computationally expensive?
22. Why can inference often run on edge devices?
23. Give three examples of inference in everyday life.
24. What is the output of the training process?
25. Explain training vs inference using a student preparing for an exam.

---

# Machine Learning

26. What is Machine Learning?
27. Why do we use Machine Learning instead of writing rules manually?
28. What is supervised learning?
29. What is unsupervised learning?
30. What is reinforcement learning?
31. What is the difference between supervised and unsupervised learning?
32. What is the purpose of a training dataset?
33. What is the purpose of a testing dataset?
34. What is prediction in Machine Learning?
35. Give five examples of Machine Learning applications.

---

# Deep Learning

36. What is Deep Learning?
37. Why do we call it "deep" learning?
38. What is the relationship between Deep Learning and neural networks?
39. Why is Deep Learning effective for images and text?
40. What are some common Deep Learning architectures?
41. Why does Deep Learning often require GPUs?
42. Give examples of applications that use Deep Learning.
43. How is Deep Learning different from traditional Machine Learning?

---

# Neural Networks

44. What is a neural network?
45. What inspired the design of neural networks?
46. What are the three main layers of a neural network?
47. What is the role of the input layer?
48. What happens inside a hidden layer?
49. What is the purpose of the output layer?
50. What is a neuron?
51. What is a weight?
52. What is a bias?
53. Why are activation functions needed?
54. What is ReLU?
55. What is a forward pass?
56. What is backpropagation?
57. How does a neural network improve during training?
58. Why do deeper networks learn more complex patterns?

---

# PyTorch

59. What is PyTorch?
60. Why is PyTorch popular for AI development?
61. What are the main building blocks of PyTorch?
62. How does PyTorch fit into the AI ecosystem?
63. What is the relationship between PyTorch and Deep Learning?
64. Why do modern AI models often use PyTorch?

---

# Tensors

65. What is a tensor?
66. Why are tensors needed?
67. What is the difference between a scalar, vector, matrix, and tensor?
68. Why are images represented as tensors?
69. Why are tensors suitable for GPU processing?
70. What is a tensor shape?
71. What is a tensor dimension?
72. What kinds of data can be represented as tensors?
73. Why are tensors considered the fundamental building block of PyTorch?

---

# Autograd

74. What is Autograd?
75. Why do we need Autograd?
76. What is a gradient?
77. What does `requires_grad=True` mean?
78. What happens when `loss.backward()` is called?
79. Does Autograd update the model weights?
80. What is the difference between Autograd and an optimizer?
81. How does Autograd simplify Deep Learning?

---

# `torch.nn`

82. What is `torch.nn`?
83. What is `nn.Module`?
84. Why do we inherit from `nn.Module`?
85. What is the purpose of the `forward()` method?
86. What is a layer?
87. What is an activation function?
88. What is a loss function?
89. What does `nn.Linear` do?
90. What does `nn.ReLU` do?
91. What is the role of `nn.CrossEntropyLoss()`?
92. What is the difference between a layer and a model?

---

# `torch.optim`

93. What is `torch.optim`?
94. Why do we need an optimizer?
95. What is a learning rate?
96. What is the difference between SGD and Adam?
97. What does `optimizer.zero_grad()` do?
98. What does `optimizer.step()` do?
99. Does the optimizer compute gradients?
100. What is the relationship between Autograd and the optimizer?

---

# Training Loop

101. What is a training loop?
102. Why is a training loop necessary?
103. What are the main stages of a training loop?
104. What happens during the forward pass?
105. What happens during loss calculation?
106. What happens during the backward pass?
107. What is updated after `optimizer.step()`?
108. What is a batch?
109. What is an epoch?
110. Why are multiple epochs needed?
111. Explain the complete PyTorch training loop from memory.
112. Why is the order `zero_grad()` → `backward()` → `step()` important?

---

# CNNs

113. What is a CNN?
114. Why are CNNs designed for images?
115. What is a convolution?
116. What is a filter (kernel)?
117. What is a feature map?
118. What is pooling?
119. What is max pooling?
120. Why do CNNs use fewer parameters than fully connected networks?
121. Give examples of applications that use CNNs.

---

# Transformers

122. What is a Transformer?
123. Why were Transformers developed?
124. What problem do they solve compared to RNNs?
125. What is attention?
126. What is self-attention?
127. Why can Transformers process data in parallel?
128. What is a token?
129. What is an embedding?
130. Why are Transformers the foundation of modern AI?
131. Explain how a sentence is processed by a Transformer.

---

# Large Language Models (LLMs)

132. What is an LLM?
133. Why are LLMs called "large"?
134. What are model parameters?
135. What is tokenization?
136. How does an LLM generate text?
137. What happens during LLM training?
138. What happens during LLM inference?
139. Why are Transformers used to build LLMs?
140. Give examples of popular LLMs.
141. What are some limitations of LLMs?

---

# Hugging Face

142. What is Hugging Face?
143. Why is Hugging Face popular?
144. What is the Hugging Face Model Hub?
145. What is the `transformers` library?
146. What is the difference between using a pre-trained model and training from scratch?
147. What is fine-tuning?
148. How does Hugging Face work with PyTorch?
149. Why does Hugging Face reduce AI development effort?

---

# Model Deployment

150. What is model deployment?
151. Why is deployment important?
152. What is model serving?
153. What is inference after deployment?
154. What is the role of an API in AI deployment?
155. What is the difference between cloud and edge deployment?
156. Why do deployed models need monitoring?
157. What is model drift?
158. Why might a deployed model need retraining?

---

# Integration and Big Picture

159. Explain the complete AI hierarchy.
160. Explain the relationship between AI, ML, and DL.
161. Explain how a neural network learns.
162. Explain the relationship between tensors, Autograd, `torch.nn`, and `torch.optim`.
163. Explain the complete PyTorch training workflow.
164. Explain the difference between CNNs and Transformers.
165. Explain how an LLM generates a response to a user prompt.
166. Explain how Hugging Face and PyTorch work together.
167. Explain the journey from raw data to a deployed AI application.
168. Draw the complete AI learning path from memory.
169. If someone asks "How does ChatGPT work?", how would you explain it in simple terms?
170. If someone asks "What is PyTorch?", how would you explain it in simple terms?

---