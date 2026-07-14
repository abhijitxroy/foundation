# Phase 4 – Memory Management (Quick Revision)

> Use this document for 10-15 minute interview revision before technical discussions.

---

## Memory Management Journey

```text
Stack vs Heap
      ↓
Where is the object stored?

Memory Layout
      ↓
How is program memory organized?

Dynamic Allocation
      ↓
When is Heap memory necessary?

new / delete
      ↓
Who owns the resource?

Memory Leaks
      ↓
Was cleanup performed correctly?

Dangling Pointers
      ↓
Is the object's lifetime still valid?

Undefined Behaviour
      ↓
Can anything unexpected happen?
```

---

## 40. Stack vs Heap

### 2 Minute Revision
- Stack provides automatic lifetime management.
- Heap provides flexible lifetime management.
- Always ask who owns the memory.
- Prefer simpler ownership models whenever possible.

### Interview Keywords
- Stack
- Heap
- Object Lifetime
- Ownership Semantics

### Most Asked Question
- What is the difference between Stack and Heap memory?

### Interview Trap
- Heap allocation is NOT always better or worse than Stack allocation.

---

## 41. Memory Layout

### 2 Minute Revision
- Programs contain multiple memory regions.
- Different objects may have different lifetimes.
- Understand where objects are stored.
- Object lifetime matters.

### Interview Keywords
- Stack
- Heap
- Data Segment
- Text Segment

### Most Asked Question
- What happens when `main()` starts executing?

### Interview Trap
- Every object is NOT stored on the Heap.

---

## 42. Dynamic Allocation

### 2 Minute Revision
- Dynamic allocation provides flexible object lifetimes.
- Not every problem requires Heap allocation.
- Ownership decisions are important.
- Prefer RAII whenever appropriate.

### Interview Keywords
- Dynamic Allocation
- Ownership
- Lifetime Management

### Most Asked Question
- Why isn't Stack allocation always sufficient?

### Interview Trap
- Dynamic allocation should NOT be the default choice.

---

## 43. new / delete

### 2 Minute Revision
- `new` allocates memory dynamically.
- `delete` releases dynamically allocated memory.
- Ownership semantics remain critical.
- Prefer smart pointers whenever appropriate.

### Interview Keywords
- new
- delete
- Ownership
- Resource Management

### Most Asked Question
- Why are smart pointers generally preferred over manual memory management?

### Interview Trap
- `new` is NOT bad practice. Unclear ownership is the real problem.

---

## 44. Memory Leaks

### 2 Minute Revision
- Memory leaks occur when resources are never released.
- Small leaks become large production problems over time.
- Ownership semantics help prevent leaks.
- RAII significantly improves memory safety.

### Interview Keywords
- Memory Leak
- Ownership
- Resource Management

### Most Asked Question
- How would you debug increasing memory usage in production?

### Interview Trap
- Small memory leaks are NOT harmless in long-running applications.

---

## 45. Dangling Pointers

### 2 Minute Revision
- Dangling pointers refer to invalid memory.
- Programs may crash unpredictably.
- Object lifetime must remain valid.
- Smart pointers significantly improve safety.

### Interview Keywords
- Dangling Pointer
- Lifetime Management
- Ownership

### Most Asked Question
- Why are dangling pointers difficult to debug?

### Interview Trap
- Dangling pointers do NOT always crash immediately.

---

## 46. Undefined Behaviour

### 2 Minute Revision
- Undefined Behaviour provides no guarantees regarding program execution.
- Programs may behave differently across platforms.
- Ownership and lifetime management remain central ideas.
- Safer designs significantly reduce UB-related bugs.

### Interview Keywords
- Undefined Behaviour
- Lifetime Management
- Ownership Semantics

### Most Asked Question
- What is Undefined Behaviour and why is it difficult to debug?

### Interview Trap
- Successful compilation does NOT guarantee correct execution.

---

## Production Debugging Checklist

Always ask:

1. Where is the object stored?
2. Who owns the memory?
3. When is it released?
4. Is its lifetime clearly defined?
5. Can RAII simplify this design?
6. Can smart pointers express ownership more clearly?
7. Can Undefined Behaviour occur?

---

## AMD SMTS Interview Checklist

Be able to confidently explain:
- Stack vs Heap trade-offs.
- Program memory layout.
- Dynamic allocation decisions.
- Ownership semantics.
- RAII and smart pointers.
- Memory leaks and their causes.
- Dangling pointers and lifetime management.
- Undefined Behaviour and production failures.
- How Modern C++ improves memory safety.

---

## Senior Engineer Thinking

```text
Junior Engineer
---------------
What is this feature?

        ↓

Mid Level Engineer
-----------------
Can this leak memory?

        ↓

Senior Engineer
---------------
Why was this design chosen?

Who owns this resource?

Is object lifetime clearly defined?

Can the implementation be simplified?

Can Undefined Behaviour occur?
```

---

## Modern C++ Memory Philosophy

```text
Write Cleaner Code
        +
Write Safer Code
        +
Write Faster Code
        +
Write Maintainable Code
        ↓
Production Quality Modern C++
```

---

**Next Phase:** `05-concurrency/47-threads.md`

> Quick Tip: In memory-management interviews, focus less on definitions and more on ownership, lifetime, cleanup responsibilities, production failures, and engineering trade-offs.