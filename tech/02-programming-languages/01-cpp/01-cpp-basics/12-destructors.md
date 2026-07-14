# Topic 12 - Destructors

## What is a Destructor?

A destructor is a special member function that is automatically called when an object is destroyed.

Its primary responsibility is to clean up resources owned by the object.

---

## Why do Destructors exist?

Destructors help us to:

- Release resources safely.
- Prevent resource leaks.
- Simplify resource management.
- Support RAII (later topic).

---

## Remember

```text
Object Created
      ↓
 Constructor
      ↓
Object Used
      ↓
 Destructor Called
      ↓
Resources Released
```

Remember:

> Destructor = Object Death + Resource Cleanup

---

## Simple Example

```cpp
class Car
{
public:
    ~Car()
    {
    }
};
```

Creating an object:

```cpp
Car myCar;
```

When `myCar` goes out of scope, the destructor is automatically called.

---

## Java Comparison

```text
Java
-----
Garbage Collector performs memory cleanup.


C++
-----
Destructor performs resource cleanup.
```

Unlike Java, C++ provides deterministic object destruction.

---

## Production Examples

Destructors are commonly used to:

- Release resources.
- Close files.
- Free memory.
- Clean up owned objects.

Almost every Modern C++ application relies on destructors either directly or indirectly.

---

## Common Mistakes

- Forgetting that destructors are automatically called.
- Performing unnecessary work inside destructors.
- Ignoring resource cleanup responsibilities.
- Assuming destructors can have parameters or return types.

---

## Interview Questions

1. What is a destructor?
2. Why do destructors exist?
3. When is a destructor called?
4. Can destructors have parameters?
5. Why are destructors important in Modern C++?

---

## Interview Tips

Remember:

```text
Object Created
      ↓
 Constructor
      ↓
Object Used
      ↓
 Destructor
      ↓
Cleanup Happens Automatically
```

Interviewers frequently ask:

- When is a destructor called?
- Constructor vs Destructor.
- Object lifetime.
- Resource cleanup.

---

## Senior-Level Thinking

Destructors represent the end of an object's lifetime.

They are closely related to:

- RAII
- Smart pointers
- Memory management
- Resource ownership
- Move semantics

Think of destructors as automatic cleanup mechanisms.

---

## 5 Minutes Revision

- Destructors are automatically called when objects are destroyed.
- Destructors clean up resources.
- Destructors do not have parameters or return types.
- Destructors represent the end of an object's lifetime.
- Destructors are fundamental to Modern C++ resource management.

---

## Status

- Topic Status: Pending Discussion
- Difficulty: Easy
- Interview Frequency: Very High

---

## Navigation

- Previous: [Topic 11 - Constructors](./11-constructors.md)
- Next: [Topic 13 - Copy Constructor](./13-copy-constructor.md)