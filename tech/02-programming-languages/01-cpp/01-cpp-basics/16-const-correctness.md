# Topic 16 - Const Correctness

## What is Const Correctness?

Const correctness is the practice of explicitly stating that a value or object should not be modified.

It improves:

- Safety
- Readability
- Maintainability
- API design

---

## Why does Const Correctness exist?

It helps us to:

- Prevent accidental modifications.
- Communicate programmer intent.
- Write safer code.
- Improve API design.

---

## Remember

```text
Can this change?
      ↓
     YES
      ↓
 Do NOT use const.


Can this change?
      ↓
      NO
      ↓
   Use const.
```

Remember:

> const = Promise Not to Modify

---

## Simple Examples

```cpp
const int age = 36;
```

The value cannot be modified.

```cpp
int age = 36;
```

The value can be modified.

---

## Function Example

```cpp
void display(const int value)
{
}
```

Using `const` communicates that the function will not modify the value.

We will revisit `const` with:

- References
- Pointers
- Classes
- Move semantics

in later topics.

---

## Java Comparison

```text
Java
-----
final


C++
-----
const
```

Although similar in intent, `const` and `final` are different language features.

---

## Production Examples

Const correctness is widely used in:

- Modern C++ APIs
- Libraries
- STL
- GoogleTest
- Performance-critical applications

Using `const` correctly improves both safety and code readability.

---

## Common Mistakes

- Ignoring const correctness.
- Using const unnecessarily.
- Assuming const means compile-time constants in every situation.
- Removing const without understanding the implications.

---

## Interview Questions

1. What is const correctness?
2. Why does const exist?
3. What are the advantages of using const?
4. How does const improve API design?
5. Why is const correctness important in Modern C++?

---

## Interview Tips

Remember:

```text
Should this change?
      ↓
      NO
      ↓
   Use const
      ↓
Safer and Clearer Code
```

Interviewers frequently ask:

- const variables.
- const function parameters.
- const references.
- const pointers.
- const member functions.

We will learn these progressively throughout the course.

---

## Senior-Level Thinking

Ask yourself:

```text
Should this value change?
      ↓
      NO
      ↓
Use const.
```

Const correctness communicates design intent and helps prevent bugs in large code bases.

---

## 5 Minutes Revision

- const means "do not modify".
- const improves safety and readability.
- Use const whenever modification is not intended.
- Const correctness is an important Modern C++ design practice.
- We will revisit const with references, pointers and classes later.

---

## Status

- Topic Status: Pending Discussion
- Difficulty: Easy
- Interview Frequency: Very High

---

## Navigation

- Previous: [Topic 15 - Static Members](./15-static-members.md)
- Next: [Topic 17 - Encapsulation](../02-oop/17-encapsulation.md)