# Topic 15 - Static Members

## What are Static Members?

Static members belong to the class itself rather than to individual objects.

They are shared by all objects of the class.

---

## Why do Static Members exist?

Static members help us to:

- Share common data.
- Reduce unnecessary duplication.
- Represent class-level information.
- Provide utility functions.

---

## Remember

```text
Normal Member
      ↓
Belongs to an Object.


Static Member
      ↓
Belongs to the Class.
```

Remember:

> Static = Shared by all Objects

---

## Simple Example

```cpp
class Car
{
public:
    static int totalCars;
};
```

Think of it as:

```text
Car Class
    ↓
 totalCars
    ↓
Shared by Every Car Object
```

There is only one copy of a static member.

---

## Static Member Functions

```cpp
class Car
{
public:
    static void displayCount()
    {
    }
};
```

Static member functions belong to the class itself.

They do not require an object to be called.

---

## Java Comparison

```text
Java
-----
static members belong to the class.


C++
-----
static members belong to the class.
```

The concept is very similar in both languages.

---

## Production Examples

Static members are commonly used for:

- Counters
- Configuration values
- Utility functions
- Shared state
- Logging and metrics

They are useful when information logically belongs to the class rather than an individual object.

---

## Common Mistakes

- Assuming every object has its own copy of a static member.
- Using static members for unrelated shared state.
- Overusing static variables when object-specific data is required.
- Confusing static members with global variables.

---

## Interview Questions

1. What is a static member?
2. Why do static members exist?
3. How are static members different from normal members?
4. Why are static member functions useful?
5. When should static members be used?

---

## Interview Tips

Remember:

```text
Object Specific?
      ↓
Normal Member


Shared Information?
      ↓
Static Member
```

Interviewers frequently ask:

- Object members vs Static members.
- Static member functions.
- Memory considerations.
- Production use cases.

---

## Senior-Level Thinking

Ask yourself:

```text
Does this information belong to:
      ↓
An Object?
      ↓
OR
      ↓
The Entire Class?
```

If it belongs to the entire class, a static member may be appropriate.

---

## 5 Minutes Revision

- Static members belong to the class.
- Static members are shared by all objects.
- Static member functions do not require an object.
- Use static members for shared information.
- Prefer static members only when the data logically belongs to the class.

---

## Status

- Topic Status: Pending Discussion
- Difficulty: Easy
- Interview Frequency: High

---

## Navigation

- Previous: [Topic 14 - Assignment Operator](./14-assignment-operator.md)
- Next: [Topic 16 - Const Correctness](./16-const-correctness.md)