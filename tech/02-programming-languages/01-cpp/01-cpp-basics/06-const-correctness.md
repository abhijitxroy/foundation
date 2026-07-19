# Topic 16 - Const Correctness

## What is Const Correctness?

In easy English:

> `const` means Read Only.

If something should not be modified, we should make it `const`.

Const correctness helps us communicate our design decisions clearly.

---

## Why does Const Correctness exist?

It helps us to:

- Prevent accidental modifications.
- Communicate design intent.
- Write safer code.
- Design better APIs.
- Make code easier to understand.

---

## Requirement First Thinking

```text
Should this value change?
          ↓
         YES
          ↓
     Do NOT use const.


Should this value change?
          ↓
          NO
          ↓
       Use const.
```

Remember:

> Requirement → Design Choice → Reason

For example:

```text
Requirement
      ↓
Should not change.
      ↓
Design Choice
      ↓
Use const.
      ↓
Reason
      ↓
Read Only.
```

---

## Simple Examples

```cpp
int age = 36;
```

Question:

> Can it be modified?

Answer:

> YES.


```cpp
const int age = 36;
```

Question:

> Can it be modified?

Answer:

> NO. It is read only.

---

## Function Example

```cpp
void display(const int value)
{
}
```

This API communicates:

> The value is read only and will not be modified.

---

## High ROI Mental Models

```text
Mandatory?
     ↓
 Reference (&)


Optional?
     ↓
 Pointer (*)


Read Only?
     ↓
 const


Mandatory + Read Only?
     ↓
 const T&


Optional + Read Only?
     ↓
 const T*
```

Do NOT memorize the syntax.

Always ask:

> What is the requirement?

---

## Production Examples

```cpp
const GPUInfo& info;
```

Communicates:

> GPU information is mandatory and read only.


```cpp
const GPUInfo* info;
```

Communicates:

> GPU information is optional and read only.

Const correctness is widely used in:

- Modern C++ APIs
- STL
- GoogleTest
- Production systems
- Performance-critical applications

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

Both communicate that something should not be modified, although they are different language features.

---

## Common Mistakes

- Ignoring const correctness.
- Making everything mutable by default.
- Using non-const objects when modification is unnecessary.
- Thinking const is only a syntax feature instead of an API design decision.

---

## High ROI Interview Questions

1. What is const?
2. Why does const exist?
3. Why is const correctness important?
4. What does `const T&` communicate?
5. What does `const T*` communicate?
6. Why does const improve API design?

---

## Interview Ready Answers

> What is const?
>
> `const` means the value is read only and should not be modified.


> Why use const?
>
> I use `const` when an object should not be modified. It improves safety and communicates the API requirements clearly.


> What does `const T&` communicate?
>
> The object is mandatory and read only.


> What does `const T*` communicate?
>
> The object is optional and read only.

Remember:

> Requirement → Design Choice → Reason → STOP

---

## Senior-Level Thinking

Don't ask:

> Which keyword should I use?

Ask:

> Should this object be modified?

If the answer is:

> NO.

Then immediately think:

> const

This is requirement-driven Modern C++ thinking.

---

## 5 Minutes Revision

- `const` means Read Only.
- Use `const` when modification is not intended.
- `const T&` means Mandatory + Read Only.
- `const T*` means Optional + Read Only.
- Think Requirements first, then syntax.
- Prefer short and requirement-driven interview answers.

---

## Status

- Topic Status: Completed
- Difficulty: Easy
- Interview Frequency: Very High
- ROI: Very High

---

## Navigation

- Previous: [Topic 5 - Pointer](./05-pointers.md)
- Next: [Topic 7 - Functions](07-functions.md)