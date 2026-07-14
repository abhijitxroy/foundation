# Topic 3 - Variables

## What is a Variable?

A variable is a named storage location used to store data.

Examples:

```cpp
int age = 36;
double salary = 42.5;
char grade = 'A';
```

---

## Why do Variables exist?

Variables allow us to:

- Store data.
- Modify data.
- Pass data between functions.
- Perform calculations.

Without variables, programs cannot store or manipulate information.

---

## Remember

Every variable has:

- Name
- Type
- Value
- Memory location

Remember:

> Variable = Name + Type + Value + Memory Location

---

## Java Comparison

```text
Java
-----
int age = 36;


C++
-----
int age = 36;
```

The syntax is similar, but later we will learn that C++ gives much greater control over memory and object lifetime.

---

## Examples

```cpp
int age = 36;

float price = 10.5f;

char grade = 'A';

bool passed = true;
```

Variables can store different kinds of data.

---

## Common Mistakes

- Using an uninitialized variable.
- Choosing an incorrect data type.
- Confusing declaration and initialization.
- Assuming all variables are stored in the same memory area.

---

## Interview Questions

1. What is a variable?
2. What happens when a variable is created?
3. What information does every variable have?
4. What is the difference between declaration and initialization?
5. Where are variables stored in memory?

---

## Interview Tips

Remember:

```text
int age = 36;
↓
Type = int
↓
Name = age
↓
Value = 36
↓
Occupies memory
```

Interviewers often use variables to introduce memory management concepts.

---

## Senior-Level Thinking

Variables are closely related to:

- Memory layout
- Stack vs Heap
- References
- Pointers
- Object lifetime
- Move semantics

Many advanced C++ concepts build upon understanding how variables are stored and managed.

---

## 5 Minutes Revision

- Variables store data.
- Every variable has a name, type, value and memory location.
- Declaration and initialization are different concepts.
- Variables are fundamental to understanding memory management.
- Variables lead naturally to references and pointers.

---

## Status

- Topic Completed: Pending Discussion
- Difficulty: Easy
- Interview Frequency: High

---

## Navigation

- Previous: [Topic 2 - Compilation Process](./02-compilation-process.md)
- Next: [Topic 4 - Data Types](./04-data-types.md)