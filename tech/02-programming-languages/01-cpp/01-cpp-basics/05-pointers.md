# Topic 6 - Pointers

## What is a Pointer?

A pointer is a variable that stores the memory address of another variable.

Example:

```cpp
int age = 36;
int* ptr = &age;
```

Here:

- `age` stores the value 36.
- `&age` gives the memory address of age.
- `ptr` stores that memory address.

---

## Why do Pointers exist?

Pointers are used to:

- Access memory directly.
- Pass data efficiently.
- Work with dynamic memory.
- Build high-performance systems.
- Implement data structures.

---

## Remember

```text
Variable
   ↓
Stores Value

Pointer
   ↓
Stores Address
```

Remember:

> Pointer = Memory Address + Direct Memory Access

---

## Java Comparison

```text
Java
-----
Pointers are hidden from developers.


C++
-----
Pointers are explicit language features.
```

C++ gives programmers much greater control over memory management.

---

## Examples

```cpp
int age = 36;
int* ptr = &age;
```

Accessing the value:

```cpp
*ptr
```

Modifying the value:

```cpp
*ptr = 40;
```

Now:

```text
age = 40
```

---

## Two Important Operators

```text
&
↓
Address-of Operator

*
↓
Dereference Operator
```

Remember:

```cpp
&age
↓
Address of age.

*ptr
↓
Value stored at that address.
```

---

## Production Examples

Pointers are commonly used in:

- System programming
- Operating systems
- Game engines
- GPU drivers
- Dynamic memory management
- Performance-critical applications

Modern C++ prefers smart pointers whenever ownership needs to be managed safely.

---

## Common Mistakes

- Using uninitialized pointers.
- Dereferencing NULL or invalid pointers.
- Confusing pointers with references.
- Forgetting that pointers store addresses, not values.

---

## Interview Questions

1. What is a pointer?
2. What is the difference between a pointer and a reference?
3. What is the difference between `&` and `*`?
4. Can a pointer be NULL?
5. Why are pointers used in C++?

---

## Interview Tips

Remember:

```text
int age = 36;
      ↓
    &age
      ↓
Memory Address
      ↓
int* ptr
      ↓
Stores Address
      ↓
*ptr
      ↓
Gets the Value
```

Interviewers frequently ask:

- Pointer vs Reference
- NULL pointers
- Dereferencing
- Memory management

---

## Senior-Level Thinking

Pointers are foundational concepts for understanding:

- Dynamic memory allocation
- Smart pointers
- Memory leaks
- Dangling pointers
- Move semantics
- Resource ownership

We will revisit pointers multiple times throughout this course.

---

## 5 Minutes Revision

- Pointers store memory addresses.
- `&` means address-of.
- `*` means dereference.
- Pointers can be NULL.
- References and pointers are different concepts.
- Pointers are heavily used in memory management.

---

## Status

- Topic Status: Pending Discussion
- Difficulty: Medium
- Interview Frequency: Very High

---

## Navigation

- Previous: [Topic 5 - References](./05-references.md)
- Next: [Topic 7 - Functions](./07-functions.md)