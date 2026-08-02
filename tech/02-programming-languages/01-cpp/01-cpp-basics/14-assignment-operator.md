# Topic 14 - Assignment Operator

## What is an Assignment Operator?

The assignment operator is used when one existing object is assigned the value of another existing object.

Remember:

```text
Object A Exists
      ↓
Object B Exists
      ↓
Assignment Happens
      ↓
Object B is Updated
```

---

## Why does the Assignment Operator exist?

It helps us to:

- Update existing objects.
- Control how assignment happens.
- Manage resources safely.
- Improve correctness and maintainability.

---

## Remember

> Assignment Operator = Updating an Existing Object

Think of it as:

```text
Object A
   ↓
Assigned To
   ↓
Object B
   ↓
Object B Already Exists
```

No new object is created.

---

## Simple Example

```cpp
class Car
{
};

Car car1;
Car car2;

car2 = car1;
```

Here:

```text
car1
 ↓
Assigned
 ↓
car2
```

Both objects already exist.

---

## Copy Constructor vs Assignment Operator

```text
Copy Constructor
----------------
Creates a NEW object.


Assignment Operator
-------------------
Updates an EXISTING object.
```

Remember:

```text
Car car2 = car1;
      ↓
Copy Constructor


car2 = car1;
      ↓
Assignment Operator
```

---

## Assignment vs Initialization (Compiler Thinking)

One of the most common interview mistakes is assuming that the presence of `=` means assignment.

The compiler does **not** look for the `=` symbol first.

Instead, it asks:

```text
Does the destination object already exist?
```

### Example 1 - Initialization

```cpp
Car car2 = car1;
```

Compiler Thinking:

```text
Does car2 already exist?

↓

NO

↓

Create a new object.

↓

Copy Constructor
```

Although `=` appears in the syntax, this is **initialization**, not assignment.

---

### Example 2 - Assignment

```cpp
Car car1;
Car car2;

car2 = car1;
```

Compiler Thinking:

```text
Does car2 already exist?

↓

YES

↓

Do not create a new object.

↓

Replace its contents.

↓

Assignment Operator
```

---

## Copy Assignment vs Move Assignment

Once the compiler decides that assignment is required, it asks one more question:

```text
Is the source an lvalue?
        ↓
      Copy Assignment

Is the source an rvalue?
        ↓
      Move Assignment
```

Examples:

```cpp
car2 = car1;
```

```text
Source: lvalue
↓
Copy Assignment
```

```cpp
car2 = std::move(car1);
```

```text
Source: rvalue expression
↓
Move Assignment
```

---

## Compiler Decision Tree

```text
Is a NEW object being created?

        │
        ├── YES
        │      │
        │      ├── Source is lvalue
        │      │        ↓
        │      │   Copy Constructor
        │      │
        │      └── Source is rvalue
        │               ↓
        │        Move Constructor
        │
        └── NO
               │
               ├── Source is lvalue
               │        ↓
               │   Copy Assignment
               │
               └── Source is rvalue
                        ↓
                 Move Assignment
```

Remember this decision tree before thinking about performance, ownership, or move semantics.

> For a detailed explanation of object creation vs object assignment, see **Topic 11 - Constructors**.

---

## Java Comparison

```text
Java
-----
Objects are usually assigned through references.


C++
-----
Objects can define how assignment should behave.
```

Understanding this distinction becomes important when managing resources.

---

## Production Examples

Assignment operators become important when working with:

- Resource management
- Large objects
- Libraries
- Smart pointers
- Move semantics

Later we will learn how Move Assignment improves performance.

---

## Common Mistakes

- Confusing copying with assignment.
- Assuming assignment creates a new object.
- Ignoring resource ownership during assignment.
- Performing unnecessary object copies.

---

## Interview Questions

1. What is an assignment operator?
2. What is the difference between copying and assignment?
3. When is an assignment operator called?
4. Does assignment create a new object?
5. Why is assignment important in Modern C++?

---

## Interview Tips

Remember:

```text
NEW Object?
    ↓
Copy Constructor


Existing Object?
    ↓
Assignment Operator
```

Interviewers frequently ask:

- Copy Constructor vs Assignment Operator.
- Object lifetime.
- Resource management.
- Move semantics.

---

## Senior-Level Thinking

The assignment operator defines how an existing object should behave when another object's value is assigned to it.

It is closely related to:

- Copy constructors
- Move semantics
- Rule of Three
- Rule of Five
- Smart pointers
- Resource ownership

---

## 5 Minutes Revision

- Assignment updates an existing object.
- Assignment does not create a new object.
- Copying and assignment are different operations.
- Assignment becomes important when managing resources.
- Move Assignment will later improve performance in Modern C++.

---

## Status

- Topic Status: Pending Discussion
- Difficulty: Medium
- Interview Frequency: Very High

---

## Navigation

- Previous: [Topic 13 - Copy Constructor](./13-copy-constructor.md)
- Next: [Topic 15 - Static Members](./15-static-members.md)