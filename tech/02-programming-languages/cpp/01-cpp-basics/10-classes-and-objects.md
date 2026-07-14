# Topic 10 - Classes and Objects

## What is a Class?

A class is a blueprint for creating objects.

It defines:

- Data (attributes)
- Behaviour (functions)

---

## What is an Object?

An object is an instance of a class.

Remember:

```text
Class
 ↓
Blueprint
 ↓
Creates
 ↓
Object
 ↓
Actual Data + Behaviour
```

---

## Why do Classes exist?

Classes help us to:

- Organize related data and behaviour.
- Improve code maintainability.
- Promote code reuse.
- Model real-world entities.

---

## Remember

> Class = Blueprint
>
> Object = Real Instance

Examples:

```text
Class
-----
Car

Object
------
BMW
Audi
Tesla
```

---

## Simple Example

```cpp
class Car
{
public:
    void start()
    {
    }
};
```

Creating an object:

```cpp
Car myCar;
```

Calling a function:

```cpp
myCar.start();
```

---

## Java Comparison

```text
Java
-----
class Car
{
}


C++
-----
class Car
{
};
```

The concepts are very similar. However, C++ gives programmers much greater control over object lifetime and memory management.

---

## Production Examples

Classes are heavily used in:

- Libraries
- Operating systems
- GoogleTest
- Build systems
- Modern C++ applications

Almost everything in Modern C++ is built around objects and resource management.

---

## Common Mistakes

- Confusing classes with objects.
- Writing excessively large classes.
- Violating the single responsibility principle.
- Ignoring object lifetime considerations.

---

## Interview Questions

1. What is a class?
2. What is an object?
3. What is the difference between a class and an object?
4. Why do classes exist?
5. Why are classes important in Modern C++?

---

## Interview Tips

Remember:

```text
Class
 ↓
Blueprint
 ↓
Creates
 ↓
Object
 ↓
Uses Memory
 ↓
Provides Behaviour
```

Interviewers frequently ask:

- Class vs Object.
- Object lifetime.
- Memory allocation.
- Encapsulation.

---

## Senior-Level Thinking

Classes are closely related to:

- Constructors
- Destructors
- RAII
- Move semantics
- Smart pointers
- Resource ownership

Understanding classes is essential before learning constructors and destructors.

---

## 5 Minutes Revision

- A class is a blueprint.
- An object is an instance of a class.
- Classes combine data and behaviour.
- Objects occupy memory and provide behaviour.
- Classes are foundational building blocks of Modern C++.

---

## Status

- Topic Status: Pending Discussion
- Difficulty: Easy
- Interview Frequency: Very High

---

## Navigation

- Previous: [Topic 9 - Namespaces](./09-namespaces.md)
- Next: [Topic 11 - Constructors](./11-constructors.md)