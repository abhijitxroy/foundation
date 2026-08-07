# Retrieval-Augmented Generation (RAG)

## Objective

Understand what Retrieval-Augmented Generation (RAG) is, why it is used, how it works, and its role in a Local AI platform.

---

# What is RAG?

Retrieval-Augmented Generation (RAG) is a technique that enhances a Large Language Model (LLM) by retrieving relevant information from external knowledge sources before generating a response.

Instead of relying only on the model's pre-trained knowledge, RAG allows the model to answer using your own documents, making responses more accurate, up-to-date, and personalized.

---

# Why RAG?

LLMs have a fixed knowledge cutoff and cannot inherently know:

- Your company documentation
- Your personal notes
- Your local files
- Newly published information
- Private repositories

RAG solves this by retrieving relevant information at query time.

Benefits:

- Private knowledge
- Up-to-date information
- Better factual accuracy
- No model retraining
- Works with local documents
- Fully offline support

---

# Architecture

```text
                  User

                    │

                    ▼

               User Query

                    │

                    ▼

            Embedding Model

                    │

                    ▼

             Vector Database

                    │

        Retrieve Relevant Chunks

                    │

                    ▼

                 Ollama

                    │

                    ▼

               Local LLM

                    │

                    ▼

              Final Response
```

---

# Components

A RAG system typically consists of:

- Documents
- Document Loader
- Text Chunker
- Embedding Model
- Vector Database
- Retriever
- Prompt Builder
- Large Language Model (LLM)

Each component has a specific responsibility in the retrieval pipeline.

---

# RAG Workflow

```text
Documents

    │

    ▼

Chunk Documents

    │

    ▼

Generate Embeddings

    │

    ▼

Store in Vector Database

    │

────────────────────────────────────────

User Query

    │

    ▼

Generate Query Embedding

    │

    ▼

Similarity Search

    │

    ▼

Retrieve Relevant Chunks

    │

    ▼

Send Context + Prompt

    │

    ▼

LLM

    │

    ▼

Final Answer
```

---

# Knowledge Sources

A RAG system can retrieve information from:

- PDF
- Markdown
- Word Documents
- HTML
- CSV
- JSON
- SQL Databases
- Git Repositories
- Wikis
- Documentation
- Local File System

---

# Chunking

Documents are usually divided into smaller pieces called **chunks**.

Example:

```
Book

↓

Chapter

↓

Paragraph

↓

Chunk
```

Smaller chunks improve retrieval precision and reduce unnecessary context.

---

# Embeddings

Documents are converted into vector representations called embeddings.

Embeddings capture semantic meaning rather than exact keywords.

Example:

```
"Artificial Intelligence"

↓

[0.12, -0.45, 0.88, ...]
```

The same process is applied to user queries before searching.

---

# Vector Database

Embeddings are stored in a vector database.

Common vector databases:

- ChromaDB
- FAISS
- Milvus
- Weaviate
- Qdrant
- pgvector

Instead of keyword matching, vector databases perform similarity search.

---

# Retrieval

When a user asks a question:

```
Explain RAII
```

The system:

1. Creates an embedding of the query.
2. Searches similar document vectors.
3. Retrieves the most relevant chunks.
4. Sends them to the LLM.

---

# Prompt Augmentation

The retrieved documents are combined with the user's prompt.

Example:

```
Context:

<Retrieved Documents>

Question:

Explain RAII
```

The LLM answers using both its own knowledge and the retrieved context.

---

# Benefits

- No model retraining
- Uses private data
- Offline support
- Better factual accuracy
- Easy to update
- Lower cost than fine-tuning
- Easy to maintain

---

# Limitations

- Retrieval quality determines answer quality.
- Poor chunking reduces accuracy.
- Incorrect embeddings affect retrieval.
- Missing documents cannot be retrieved.
- Large document collections require indexing time.

---

# Local AI Integration

```text
            Open WebUI

                 │

                 ▼

              Ollama

                 │

                 ▼

                 RAG

        ┌────────┴────────┐

        ▼                 ▼

 Vector Database     Embedding Model

        │

        ▼

 Local Documents
```

---

# Typical Technology Stack

| Layer | Example |
|--------|---------|
| LLM | Qwen, Gemma, Llama |
| Runtime | Ollama |
| Embeddings | BGE, Jina, Nomic |
| Vector Database | ChromaDB, FAISS |
| Framework | LlamaIndex, LangChain |
| UI | Open WebUI |

---

# Best Practices

- Keep documents organized.
- Remove duplicate documents.
- Re-index after document updates.
- Use high-quality embedding models.
- Keep vector databases backed up.
- Store documents locally for privacy.
- Use appropriate chunk sizes.

---

# Summary

- RAG extends an LLM with external knowledge.
- It retrieves relevant documents before generating a response.
- It enables private, offline, and up-to-date AI systems.
- It improves answer quality without retraining the model.
- It is one of the core building blocks of modern Local AI platforms.

---

# Next

Continue with **07-memory.md**.
