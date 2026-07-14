# Topic 5 - References

## What is a Reference?

A reference is an alias (another name) for an existing variable.

Example:

```cpp
int age = 36;
int& ref = age;
```

Both `age` and `ref` refer to the same memory location.

---

## Why do References exist?

References are used to:

- Avoid unnecessary copying.
- Improve performance.
- Modify objects safely.
- Pass large objects efficiently.

---

## Remember

A reference:

- Must be initialized.
- Cannot be NULL.
- Cannot be reseated (cannot refer to another variable later).
- Acts as an alias for an existing object.

Remember:

> Reference = Alias + No Copy + Same Memory Location

---

## Java Comparison

```text
Java
-----
Objects are accessed through references.


C++
-----
References are language features.
They behave like aliases.
```

Although Java uses the term "reference", it is different from C++ references.

---

## Examples

```cpp
int age = 36;
int& ref = age;

ref = 40;

// age becomes 40.
```

Another example:

```cpp
void increment(int& value)
{
    value++;
}
```

Passing by reference avoids making unnecessary copies.

---

## Production Examples

References are commonly used in:

- Function parameters
- STL containers
- Performance-critical applications
- Modern C++ libraries

They help write efficient and readable code.

---

## Common Mistakes

- Thinking references are pointers.
- Assuming references can be NULL.
- Assuming references can be reassigned.
- Passing large objects by value unnecessarily.

---

## Interview Questions

1. What is a reference?
2. What is the difference between a pointer and a reference?
3. Can a reference be NULL?
4. Can a reference be reassigned?
5. Why are references preferred for function parameters?

---

## Interview Tips

Remember:

```text
int age = 36;
     ↓
int& ref = age;
     ↓
Same Memory Location
     ↓
No Copy Created
```

Interviewers frequently ask:

- Pointer vs Reference
- Pass by value vs Pass by reference
- Reference lifetime rules

---

## Senior-Level Thinking

References are heavily used in:

- Modern C++ APIs
- STL
- Move semantics (later topics)
- Resource management

Understanding references is essential before learning pointers and move semantics.

---

## 5 Minutes Revision

- A reference is an alias for an existing object.
- References must be initialized.
- References cannot be NULL.
- References cannot be reseated.
- Passing by reference avoids unnecessary copying.

---

## Status

- Topic Status: Pending Discussion
- Difficulty: Easy
- Interview Frequency: Very High

---

## Navigation

- Previous: [Topic 4 - Data Types](./04-data-types.md)
- Next: [Topic 6 - Pointers](./06-pointers.md)