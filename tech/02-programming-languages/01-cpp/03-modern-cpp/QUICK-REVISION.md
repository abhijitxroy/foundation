# Phase 3 – Modern C++ (Quick Revision)

> Use this document for 10-15 minute interview revision before technical discussions.

---

## Modern C++ Resource Management Journey

```text
RAII
 ↓
Automatic Cleanup

Smart Pointers
 ↓
Ownership Management

Move Semantics
 ↓
Efficient Resource Transfer

Rvalue References
 ↓
Temporary Objects

std::move
 ↓
Enable Move Operations

Rule of Three
 ↓
Copy Semantics

Rule of Five
 ↓
Copy + Move Semantics

Rule of Zero
 ↓
Prefer Not Managing Resources Manually
```

---

## 24. RAII

### 2 Minute Revision
- Tie resource lifetime to object lifetime.
- Constructors acquire resources.
- Destructors release resources.
- Automatic and deterministic cleanup.

### Interview Keywords
- Resource Management
- Object Lifetime
- Automatic Cleanup
- Exception Safety

### Most Asked Question
- What is RAII and why is it important?

### Interview Trap
- RAII is NOT only for memory management.

---

## 25. Smart Pointers

### 2 Minute Revision
- `unique_ptr` -> Single ownership.
- `shared_ptr` -> Shared ownership.
- `weak_ptr` -> Non-owning observer.
- Built upon RAII principles.

### Interview Keywords
- Ownership Semantics
- unique_ptr
- shared_ptr
- weak_ptr

### Most Asked Question
- Why should `unique_ptr` generally be preferred over `shared_ptr`?

### Interview Trap
- Don't use `shared_ptr` everywhere.

---

## 26. Move Semantics

### 2 Minute Revision
- Transfers resources instead of copying them.
- Improves performance.
- Reduces unnecessary allocations.
- Central idea -> Ownership transfer.

### Interview Keywords
- Move Operations
- Ownership Transfer
- Performance

### Most Asked Question
- Why was move semantics introduced?

### Interview Trap
- Moving is NOT faster copying. It is resource transfer.

---

## 27. Rvalue References

### 2 Minute Revision
- Declared using `&&`.
- Work efficiently with temporary objects.
- Make move semantics possible.

### Interview Keywords
- Temporary Objects
- `&&`
- Move Semantics

### Most Asked Question
- How are rvalue references related to move semantics?

### Interview Trap
- Rvalue references and move semantics are NOT identical.

---

## 28. std::move

### 2 Minute Revision
- Enables move semantics.
- Does not move anything by itself.
- Makes ownership transfer explicit.

### Interview Keywords
- std::move
- Ownership Transfer
- Move Operations

### Most Asked Question
- Does `std::move` actually move an object?

### Interview Trap
- `std::move()` itself performs no move operation.

---

## 29. Rule of Three

### 2 Minute Revision
- Destructor.
- Copy Constructor.
- Copy Assignment Operator.
- Applies primarily to resource-managing classes.

### Interview Keywords
- Copy Semantics
- Resource Management

### Most Asked Question
- What problem does the Rule of Three solve?

### Interview Trap
- Not every class requires the Rule of Three.

---

## 30. Rule of Five

### 2 Minute Revision
- Rule of Three + Move Operations.
- Includes move constructor and move assignment operator.
- Central idea -> Ownership semantics.

### Interview Keywords
- Move Constructor
- Move Assignment
- Resource Management

### Most Asked Question
- How is the Rule of Five different from the Rule of Three?

### Interview Trap
- Not every class should implement all five functions.

---

## 31. Rule of Zero

### 2 Minute Revision
- Prefer not managing resources manually.
- Delegate ownership management to Modern C++ facilities.
- Prefer RAII and Smart Pointers whenever possible.

### Interview Keywords
- Rule of Zero
- Smart Pointers
- Maintainability

### Most Asked Question
- Why is the Rule of Zero preferred in Modern C++?

### Interview Trap
- Rule of Zero does NOT remove the need to understand ownership semantics.

---

## 32. Templates

### 2 Minute Revision
- Enable generic programming.
- Improve code reuse.
- Foundation of much of the STL.

### Interview Keywords
- Templates
- Generic Programming
- Zero-Cost Abstractions

### Most Asked Question
- How are templates different from Java generics?

### Interview Trap
- Templates are NOT only for library developers.

---

## 33. STL Containers

### 2 Minute Revision
- Use the right container for the right problem.
- `vector` is often the default choice.
- Understand container trade-offs.

### Interview Keywords
- vector
- map
- unordered_map
- queue
- stack

### Most Asked Question
- When should we prefer `vector` over `list`?

### Interview Trap
- Don't choose containers based only on familiarity.

---

## 34. Iterators

### 2 Minute Revision
- Connect containers and algorithms.
- Provide a common traversal mechanism.
- Most algorithms operate on iterators.

### Interview Keywords
- begin()
- end()
- Generic Programming

### Most Asked Question
- Why do algorithms use iterators instead of containers?

### Interview Trap
- Iterators are NOT always raw pointers.

---

## 35. Algorithms

### 2 Minute Revision
- Prefer reusable STL algorithms when appropriate.
- Improve readability and maintainability.
- Work naturally with iterators and lambdas.

### Interview Keywords
- std::sort()
- std::find()
- std::count()
- std::find_if()

### Most Asked Question
- Why are STL algorithms preferred over handwritten loops?

### Interview Trap
- Don't reinvent existing STL algorithms unnecessarily.

---

## 36. Lambdas

### 2 Minute Revision
- Anonymous functions.
- Frequently used with STL algorithms.
- Improve readability and expressiveness.

### Interview Keywords
- Lambdas
- Callbacks
- Algorithms

### Most Asked Question
- When should lambdas be preferred over normal functions?

### Interview Trap
- Lambdas are NOT always a replacement for normal functions.

---

## 37. auto

### 2 Minute Revision
- Compile-time type deduction.
- Improves readability.
- Extensively used in Modern C++.

### Interview Keywords
- Type Deduction
- Readability
- Templates

### Most Asked Question
- Does `auto` make C++ dynamically typed?

### Interview Trap
- `auto` does NOT mean dynamic typing.

---

## 38. constexpr

### 2 Minute Revision
- Enables compile-time evaluation when possible.
- Improves performance and expressiveness.
- Makes programmer intent explicit.

### Interview Keywords
- Compile Time
- Performance
- Constants

### Most Asked Question
- How is `constexpr` different from `const`?

### Interview Trap
- `constexpr` functions do NOT always execute at compile time.

---

## 39. enum class

### 2 Minute Revision
- Provides type-safe enumerations.
- Improves API design.
- Preferred over traditional enums in Modern C++.

### Interview Keywords
- Type Safety
- Enumerations
- API Design

### Most Asked Question
- Why is `enum class` preferred over traditional enums?

### Interview Trap
- `enum class` does NOT allow implicit integer conversions.

---

## AMD SMTS Interview Checklist

Be able to confidently explain:
- RAII and ownership semantics.
- Smart pointers and their trade-offs.
- Move semantics and `std::move()`.
- Rule of Three, Five and Zero.
- Templates and generic programming.
- STL containers and common trade-offs.
- Why algorithms prefer iterators.
- Why lambdas improve Modern C++ code.
- When to use `auto`, `constexpr` and `enum class`.

---

## Modern C++ Philosophy

```text
Write Cleaner Code
        +
Write Safer Code
        +
Write Faster Code
        ↓
Modern C++
```

---

**Next Phase:** `04-memory/40-stack-vs-heap.md`

> Quick Tip: For interviews, focus less on memorizing syntax and more on explaining ownership semantics, engineering trade-offs, and production use cases.