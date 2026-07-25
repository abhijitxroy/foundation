# 27. Rvalue References

## Topic Overview
- Importance: ★★★★★ MUST KNOW
- Interview Frequency: Very High
- Estimated Study Time: 45-60 Minutes

## Why Should You Learn This Topic?
Rvalue references are one of the foundations of Modern C++. They make move semantics possible and enable efficient resource transfers. Understanding rvalue references is essential before learning `std::move` and the Rule of Five.

## Learning Objectives
- Understand what rvalue references are.
- Learn why they exist.
- Understand the difference between lvalues and rvalues at a high level.
- Recognize where rvalue references improve performance.
- Prepare for common interview questions.

## Beginner Level – What are Rvalue References?
Before understanding rvalue references, remember that not every value in C++ behaves the same way.

For example:

```cpp
int age = 30;
```

Here:
- `age` has a name and can be reused.
- `30` is a temporary value.

Simply put:

> An rvalue reference allows us to refer to temporary objects whose resources can potentially be transferred efficiently.

In Modern C++, rvalue references are declared using:

```cpp
int&& value;
```

The `&&` symbol represents an rvalue reference.

## Objects vs Expressions vs Value Categories

One of the most important concepts in Modern C++ is understanding that **objects** and **lvalues/rvalues** are not the same thing.

Think of them as three separate concepts:

```text
Object
------
Actual data stored in memory.

        ↓

Expression
----------
Something the compiler evaluates.

        ↓

Value Category
--------------
lvalue or rvalue
```

Example:

```cpp
std::string name = "Intel";
```

There is one object:

```text
Object
------
name
```

But there are different expressions that refer to it:

```cpp
name
std::move(name)
```

The compiler classifies these expressions differently:

| Expression | Value Category |
|------------|----------------|
| `name` | lvalue |
| `std::move(name)` | rvalue expression |

Notice something important:

- The object does **not** change.
- Only the expression's value category changes.

This is why we say:

> `std::move()` does **not** change the object. It changes how the expression is treated by the compiler.

Remember this mental model:

```text
                    Object
              (Actual memory)

                    │
         ┌──────────┴──────────┐
         │                     │
         ▼                     ▼

      Expression          Expression
         name           std::move(name)

         │                     │
         ▼                     ▼

      lvalue              rvalue
```

## Understanding lvalue First

Before learning `T&&`, it is easier to understand what an lvalue is.

Remember this sentence:

```text
lvalue
-------
I still need this object.
```

Examples:

```cpp
int age = 30;
std::string name = "Intel";
std::vector<int> numbers;
```

All of these are lvalues because:

- They have an identity.
- They own their resources.
- They can be reused later.
- They safely survive beyond the current statement.

Think of an lvalue as your permanent house.

```text
Permanent House
----------------
TV
Laptop
Books
Furniture
      ↓
Still living here.
      ↓
Still need these resources.
      ↓
Compiler protects them.
```

The compiler's thinking is very simple:

```text
Do I still need this object?
        ↓
       YES
        ↓
     lvalue
        ↓
Protect its resources.
        ↓
Do not transfer ownership.
```

Move semantics becomes possible only when the compiler can distinguish objects that are still needed from objects that are temporary.

## Why Do Rvalue References Exist?
They exist to:
- Enable move semantics.
- Avoid unnecessary copies.
- Improve performance.
- Support efficient resource transfers.

Without rvalue references, Modern C++ would lose many of its performance improvements.

## Compiler Thinking

The compiler asks two simple questions:

```text
Does this object still need its resources?
            ↓
           YES
            ↓
         lvalue
            ↓
      Protect the object.


            OR


            ↓
           NO
            ↓
         rvalue
            ↓
     Safe candidate for moving.
            ↓
     rvalue references can bind.
```

Rvalue references were introduced so that Modern C++ could explicitly distinguish objects that are safe candidates for efficient resource transfer.

## Real World Analogy

Remember these three sentences:

```text
lvalue
-------
I still need this object.


rvalue
-------
I am about to disappear.


rvalue reference (T&&)
---------------------
I can safely receive objects that are about to disappear.
```

Notice how all three concepts are connected:

```text
lvalue
-------
I still need this object.
       ↓
Compiler protects it.


rvalue
-------
I am about to disappear.
       ↓
Safe candidate for moving.


rvalue reference (T&&)
---------------------
I can efficiently receive temporary objects.
       ↓
Ownership may be transferred later.
```

Think of a temporary hotel room.

```text
Hotel Room
-----------
TV
Laptop
Books
Chair

      ↓
Guest is checking out.
      ↓
Nobody needs these resources anymore.
      ↓
Safe to transfer ownership.
```

An rvalue reference is simply a special doorway that allows temporary objects to enter efficiently without forcing an unnecessary copy.

## Java Developer's Corner
Java developers generally do not need to think about:
- Move operations.
- Ownership transfers.
- Rvalue references.

Modern C++ provides additional control over performance and resource management.

```text
Named Object
------------
Reusable
     ↓
Generally copied or referenced.


Temporary Object
----------------
Short lived
     ↓
Can potentially be moved.
```

Understanding this distinction is essential for learning move semantics.

## Simple Examples

### Lvalue Example

```cpp
int value = 100;
```

`value` has a name and can be used multiple times.

### Rvalue Example

```cpp
100
```

The value `100` is temporary.

### Rvalue Reference Example

```cpp
int&& number = 100;
```

Similarly:

```cpp
std::string&& text = "Modern C++";
```

For now, focus only on understanding that rvalue references are designed to work efficiently with temporary objects.

## Syntax Summary

| Syntax | Book Definition | Our Coaching Definition |
|--------|------------------|-------------------------|
| `T&` | Lvalue reference | Reference that binds to an **lvalue expression** (an object that is still needed) |
| `T&&` | Rvalue reference | Reference that binds to an **rvalue expression** (typically a temporary object eligible for moving) |

Remember:

- `T&` and `T&&` are two different language constructs.
- `&&` does **not** mean "double reference".
- References bind to **expressions**, while those expressions usually refer to **objects**.

## Engineer Level Thinking

Do not memorize:

```cpp
T&& value;
```

Instead remember the ownership story:

```text
Temporary Object
       ↓
About to disappear
       ↓
Nobody needs its resources anymore
       ↓
Safe candidate for moving
       ↓
Captured by T&&
       ↓
Move constructor may transfer ownership
```

Think of `T&&` as saying:

> "I am willing to receive temporary objects efficiently."

That single sentence is usually sufficient to understand why rvalue references exist.

## Production Examples
Rvalue references are extensively used by:
- STL containers.
- Smart pointers.
- Move constructors.
- Move assignment operators.
- Modern C++ libraries.
- High-performance applications.

Although developers may not write them every day, Modern C++ libraries use them heavily behind the scenes.

## AMD SMTS Perspective
This is a MUST KNOW interview topic.

Interviewers may ask:
- What is an rvalue reference?
- Why was it introduced?
- How does it relate to move semantics?
- Why does it improve performance?
- How does `std::move` use rvalue references?

### Why Should I Care as a Platform Engineer?
- Improves application performance.
- Enables efficient ownership transfers.
- Reduces unnecessary copies.
- Forms the foundation for move operations in Modern C++.
- Frequently appears in production-quality libraries.

## Common Mistakes
- Thinking `&&` always means a logical AND operator.
- Treating rvalue references as regular references.
- Confusing moving with copying.
- Attempting to learn `std::move` before understanding rvalue references.

## Common Confusions

### Confusion 1

> Is every object movable?

No. Whether moving makes sense depends upon ownership and resource management requirements.

### Confusion 2

> Are rvalue references the same as move semantics?

No.

- Rvalue references are the language feature.
- Move semantics is the design concept that uses them.

## Interview Questions
1. What is an rvalue reference?
2. Why was it introduced in Modern C++?
3. How is it related to move semantics?
4. Why does it improve performance?
5. Give examples where rvalue references are useful.

## Interview Traps
- Saying move semantics and rvalue references are identical.
- Saying every object should always be moved.
- Forgetting that temporary objects are central to this topic.

## Exercise
Write examples demonstrating:
- An lvalue.
- An rvalue.
- An rvalue reference.

Explain:
- Which objects are temporary.
- Which objects may be candidates for moving.
- Why ownership transfer may improve performance.

## 5 Minute Revision

- lvalue means: "I still need this object."
- rvalue means: "I am about to disappear."
- `T&&` means: "I can efficiently receive temporary objects."
- Rvalue references make move semantics possible.
- They avoid unnecessary copies of expensive resources.
- Think Ownership -> Temporary Object -> T&& -> Ownership Transfer.

## Previous and Next Topics
- Previous: [26. Move Semantics](26-move-semantics.md)
- Current: **27. Lvalue- and Rvalue References**
- Next: [28. std::move](28-std-move.md)

## Summary
- Rvalue references are one of the foundational features of Modern C++.
- They enable efficient resource transfers and improve performance.
- Understanding temporary objects and ownership semantics is more important than memorizing syntax.
- They provide the foundation for understanding `std::move`.

## Status
Status: Topic 27 Completed (Revisit after Topics 28 and 30 for std::move and the Rule of Five).