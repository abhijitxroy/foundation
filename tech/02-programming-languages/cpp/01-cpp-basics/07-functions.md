# Topic 7 - Functions

## What is a Function?

A function is a reusable block of code that performs a specific task.

Example:

```cpp
int add(int a, int b)
{
    return a + b;
}
```

---

## Why do Functions exist?

Functions help us to:

- Reuse code.
- Improve readability.
- Reduce duplication.
- Simplify maintenance.
- Organize programs into smaller units.

---

## Remember

Every function has:

- Return type
- Function name
- Parameters (optional)
- Function body

Remember:

> Function = Return Type + Name + Parameters + Behaviour

---

## Java Comparison

```text
Java
-----
public int add(int a, int b)


C++
-----
int add(int a, int b)
```

The syntax is similar. Later, we will learn that C++ supports additional features such as function overloading and templates.

---

## Examples

Function with parameters:

```cpp
int add(int a, int b)
{
    return a + b;
}
```

Function without parameters:

```cpp
void printMessage()
{
}
```

Function returning nothing:

```cpp
void display()
{
}
```

---

## Production Examples

Functions are used everywhere:

- Business logic
- Libraries
- Build tools
- Operating systems
- GoogleTest
- Modern C++ APIs

Breaking large programs into small functions improves maintainability.

---

## Common Mistakes

- Writing excessively large functions.
- Passing large objects unnecessarily by value.
- Choosing incorrect return types.
- Duplicating code instead of reusing functions.

---

## Interview Questions

1. What is a function?
2. Why do functions exist?
3. What are the parts of a function?
4. What is the difference between void and non-void functions?
5. Why should functions be kept small and reusable?

---

## Interview Tips

Remember:

```text
int add(int a, int b)
      ↓
Return Type = int
      ↓
Name = add
      ↓
Parameters = a, b
      ↓
Returns a value
```

Interviewers frequently ask:

- Return types
- Parameters
- Pass by value
- Pass by reference
- Function design principles

---

## Senior-Level Thinking

Functions are closely related to:

- References
- Pointers
- Function overloading
- Templates
- Move semantics
- API design

Writing small and reusable functions improves code quality and maintainability.

---

## 5 Minutes Revision

- Functions are reusable blocks of code.
- Every function has a return type, name and optional parameters.
- Functions improve readability and maintainability.
- Keep functions small and focused.
- Functions are foundational building blocks of larger systems.

---

## Status

- Topic Status: Pending Discussion
- Difficulty: Easy
- Interview Frequency: High

---

## Navigation

- Previous: [Topic 6 - Pointers](./06-pointers.md)
- Next: [Topic 8 - Header Files](./08-header-files.md)