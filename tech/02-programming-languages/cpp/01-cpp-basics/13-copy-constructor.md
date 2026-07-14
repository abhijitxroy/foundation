# Topic 13 - Copy Constructor

## What is a Copy Constructor?

A copy constructor creates a new object as a copy of an existing object.

Remember:

```text
Existing Object
       ↓
Copied
       ↓
New Object Created
```

---

## Why does a Copy Constructor exist?

A copy constructor helps us to:

- Create copies of objects.
- Control how copying happens.
- Manage resources safely.
- Improve correctness and performance.

---

## Remember

> Copy Constructor = Copying an Existing Object

Think of it as:

```text
Object A
   ↓
 Copy Happens
   ↓
Object B
```

Both objects are different objects.

---

## Simple Example

```cpp
class Car
{
};

Car car1;
Car car2 = car1;
```

Here:

```text
car1
 ↓
Copied
 ↓
car2
```

The copy constructor is called automatically.

---

## Java Comparison

```text
Java
-----
Object copying is usually explicit.


C++
-----
Object copying may automatically invoke
a copy constructor.
```

Understanding when copying occurs is extremely important in Modern C++.

---

## Production Examples

Copy constructors are commonly involved when:

- Returning objects from functions.
- Passing objects by value.
- Creating copies of existing objects.
- Managing resources.

Later we will learn how Move Semantics improves performance by reducing unnecessary copying.

---

## Common Mistakes

- Forgetting that copying creates a new object.
- Assuming object assignment and object copying are the same.
- Ignoring resource ownership during copying.
- Performing unnecessary copies of large objects.

---

## Interview Questions

1. What is a copy constructor?
2. Why does a copy constructor exist?
3. When is a copy constructor called?
4. What is the difference between copying and assignment?
5. Why is copying important in Modern C++?

---

## Interview Tips

Remember:

```text
Object A
   ↓
Copy Constructor
   ↓
Object B
   ↓
New Object Created
```

Interviewers frequently ask:

- Constructor vs Copy Constructor.
- Copy Constructor vs Assignment Operator.
- Pass by value.
- Resource management.

---

## Senior-Level Thinking

Copy constructors are closely related to:

- Assignment operators
- Move semantics
- Rule of Three
- Rule of Five
- Smart pointers
- Resource ownership

Think of a copy constructor as defining how an object should behave when it is copied.

---

## 5 Minutes Revision

- Copy constructors create copies of existing objects.
- Copying creates a new object.
- Copying and assignment are different operations.
- Copy constructors become extremely important when managing resources.
- Move semantics will later help us avoid unnecessary copies.

---

## Status

- Topic Status: Pending Discussion
- Difficulty: Medium
- Interview Frequency: Very High

---

## Navigation

- Previous: [Topic 12 - Destructors](./12-destructors.md)
- Next: [Topic 14 - Assignment Operator](./14-assignment-operator.md)