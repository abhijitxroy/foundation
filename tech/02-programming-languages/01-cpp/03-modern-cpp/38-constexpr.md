# 38. constexpr

## Topic Overview
- Importance: ★★★★ HIGHLY IMPORTANT
- Interview Frequency: High
- Estimated Study Time: 30-45 Minutes

## Why Should You Learn This Topic?
`constexpr` allows Modern C++ to perform certain computations during compilation rather than at runtime. It improves performance, safety, and expressiveness while making programmer intent explicit. Understanding `constexpr` is valuable for writing efficient and maintainable Modern C++ code.

## Learning Objectives
- Understand what `constexpr` is.
- Learn why it exists.
- Understand compile-time versus runtime computation.
- Recognize common production use cases.
- Prepare for common interview questions.

## Beginner Level – What is constexpr?
Simply put:

> `constexpr` tells the compiler that a value or function may be evaluated at compile time when possible.

For example:

```cpp
constexpr int size = 100;
```

Similarly:

```cpp
constexpr int square(int value)
{
    return value * value;
}
```

When possible, the compiler performs the computation before the program even starts executing.

## Why Does constexpr Exist?
Without `constexpr`, certain computations must always happen at runtime.

`constexpr` exists to:
- Improve performance.
- Improve safety.
- Express programmer intent clearly.
- Enable compile-time optimizations.

Modern C++ encourages developers to perform work at compile time whenever it is practical and beneficial.

## Real World Analogy
Imagine calculating tomorrow's meeting schedule today instead of waiting until tomorrow morning.

If the information is already known, it makes sense to prepare it beforehand.

Similarly:

```text
Known Today
     ↓
Compile Time
     ↓
No Additional Work Later


Unknown Today
     ↓
Runtime
     ↓
Must Be Calculated Later
```

## Java Developer's Corner
Java developers are accustomed to:
- `final`
- Compile-time constants
- JIT optimizations

Modern C++ additionally allows developers to express that certain values and computations may occur during compilation.

Unlike `const`, `constexpr` emphasizes compile-time evaluation whenever possible.

## Simple Examples

### Constant Value

```cpp
constexpr int maxSize = 256;
```

### Function Example

```cpp
constexpr int add(int first, int second)
{
    return first + second;
}
```

Usage:

```cpp
constexpr int result = add(10, 20);
```

### Runtime Example

```cpp
int value = 20;

int result = add(value, 10);
```

In this case, the computation may occur at runtime because the value is not known during compilation.

For now, focus on understanding that `constexpr` allows the compiler to perform work early whenever possible.

## Engineer Level Thinking
Ask yourself:

> Is this value already known at compile time?

If the answer is yes, `constexpr` may provide:
- Better performance.
- Safer designs.
- Clearer intent.

Not every value should be `constexpr`. Use it when compile-time computation is meaningful.

## Production Examples
`constexpr` is commonly used for:
- Constants.
- Configuration values.
- Utility functions.
- Library development.
- Compile-time validations.
- Modern C++ APIs.

Many Modern C++ libraries use `constexpr` extensively to improve both performance and correctness.

## AMD SMTS Perspective
Interviewers may ask:
- What is `constexpr`?
- How is it different from `const`?
- Why was it introduced?
- When should it be used?
- What are its benefits?

### Why Should I Care as a Platform Engineer?
- Improves performance.
- Improves readability.
- Makes programmer intent explicit.
- Frequently appears in Modern C++ libraries.
- Encourages compile-time optimizations when appropriate.

## Common Mistakes
- Treating `constexpr` and `const` as identical.
- Using `constexpr` everywhere unnecessarily.
- Assuming every function can be evaluated at compile time.
- Memorizing syntax without understanding why it exists.

## Common Confusions

### Confusion 1

> Is `constexpr` the same as `const`?

No.

- `const` means a value cannot be modified.
- `constexpr` additionally expresses that compile-time evaluation is possible when appropriate.

### Confusion 2

> Does `constexpr` always guarantee compile-time execution?

Not necessarily.

A `constexpr` function may still execute at runtime when compile-time evaluation is not possible.

## Interview Questions
1. What is `constexpr`?
2. Why was it introduced?
3. How is it different from `const`?
4. When should we use it?
5. What benefits does it provide?

## Interview Traps
- Saying `constexpr` and `const` are identical.
- Assuming every `constexpr` function always executes at compile time.
- Using `constexpr` without understanding its purpose.

## Exercise
Create examples demonstrating:
- `const`
- `constexpr` variables.
- A simple `constexpr` function.

Explain:
- Which values are known during compilation.
- When runtime evaluation may still occur.
- Why `constexpr` improves maintainability.

## 5 Minute Revision
- `constexpr` enables compile-time evaluation whenever possible.
- It improves performance, safety, and readability.
- It is different from `const`.
- Modern C++ uses `constexpr` extensively for constants and utility functions.
- Good engineering judgment remains more important than using it everywhere.

## Previous and Next Topics
- Previous: [37. auto](37-auto.md)
- Current: **38. constexpr**
- Next: [39. enum class](39-enum-class.md)

## Summary
- `constexpr` allows Modern C++ to perform certain computations during compilation.
- It improves both performance and expressiveness when used appropriately.
- Understanding when compile-time computation is beneficial is more important than memorizing syntax.

## Status
Status: Topic 38 Completed (Continue with Topic 39 for enum class and type-safe enumerations in Modern C++).