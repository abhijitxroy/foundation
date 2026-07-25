# 28. std::move

## Topic Overview
- Importance: ★★★★★ MUST KNOW
- Interview Frequency: Very High
- Estimated Study Time: 30-45 Minutes

## Why Should You Learn This Topic?
`std::move` is one of the most frequently used utilities in Modern C++. Despite its name, it does not actually move anything by itself. Instead, it enables move semantics by informing the compiler that an object's resources may be transferred efficiently. Understanding `std::move` is essential for writing high-performance Modern C++ code.

## Learning Objectives
- Understand what `std::move` is.
- Learn why it exists.
- Understand how it relates to move semantics and rvalue references.
- Recognize common interview questions and misconceptions.
- Prepare for production-level Modern C++ development.

## Beginner Level – What is std::move?
Simply put:

> `std::move` tells the compiler that an object may safely transfer its resources instead of being copied.

One important point to remember is:

> `std::move` does not actually move anything by itself.

It merely enables move operations when appropriate.

### Compiler Thinking

Think like the compiler:

```text
Before
------
name
 ↓
lvalue expression
 ↓
Protected

std::move(name)
 ↓
Programmer gives permission
 ↓
rvalue expression
 ↓
Move operations become eligible
```

The important point is that **the object does not change**. Only the **expression** produced by `std::move(name)` is treated as an rvalue expression.

### The Permission Analogy (Remember This Forever)

Think of an object as a house that owns valuable resources.

```text
name
 ↓
Owns:
- TV
- Laptop
- Furniture
- Books
```

As long as you live in the house, nobody is allowed to take anything from it.

```text
lvalue
-------
I still need this object.
```

Now imagine you decide to sell your house and sign the transfer papers.

```text
std::move(name)
----------------
I give permission to transfer ownership.
```

At this point, nothing has actually been transferred.

- The house is still yours.
- The resources are still yours.
- Only permission has been given.

This is the biggest misconception about `std::move`.

> `std::move` does not move anything. It merely tells the compiler that moving is allowed if an appropriate move operation exists.

The actual ownership transfer happens later when a move constructor or move assignment operator is invoked.

```text
lvalue
   ↓
std::move()
   ↓
Permission Granted
   ↓
Move Constructor Called
   ↓
Ownership Transferred
   ↓
Old Object Remains Valid
```

## Why Does std::move Exist?
Without `std::move`, C++ frequently performs copy operations when ownership transfer is not obvious.

`std::move` exists to:
- Improve performance.
- Enable efficient ownership transfers.
- Avoid unnecessary copies.
- Work together with move constructors and move assignment operators.

## Real World Analogy

Remember these four sentences:

```text
lvalue
-------
I still need this object.


rvalue
-------
I am about to disappear.


std::move()
------------
I give permission to move.


Move Constructor
----------------
Ownership is actually transferred.
```

If you remember only these four lines, most of Move Semantics becomes much easier to understand.

## Java Developer's Corner
Java developers rarely need to explicitly request ownership transfers.

Modern C++ provides additional control over:
- Performance.
- Resource ownership.
- Object lifetime management.

```text
Copy Operation
--------------
Object A
     ↓
Duplicate resources
     ↓
Object B


std::move()
------------
Object A
     ↓
Ownership may be transferred
     ↓
Object B
```

## Simple Examples

### Copy Operation

```cpp
std::string first = "Modern C++";
std::string second = first;
```

Both objects own their own resources.

### Move Operation

```cpp
#include <utility>

std::string first = "Modern C++";
std::string second = std::move(first);
```

After moving:
- `second` owns the resource.
- `first` remains valid but its contents are unspecified.

> Never assume a moved-from object retains its previous value.

## Engineer Level Thinking
Ask yourself:

> Does this object still need its resources?

If the answer is no, moving may be preferable to copying.

Examples include:
- Large strings.
- STL containers.
- Smart pointers.
- Resource-managing classes.

Efficient ownership transfer is the central idea behind `std::move`.

## Production Examples
`std::move` is widely used by:
- STL containers.
- Smart pointers.
- High-performance applications.
- Modern C++ libraries.
- Platform engineering tooling.
- Production-quality APIs.

Modern C++ libraries make extensive use of move operations internally to improve performance.

## AMD SMTS Perspective
This is a MUST KNOW interview topic.

Interviewers may ask:
- What does `std::move` actually do?
- Does `std::move` move an object?
- Why was `std::move` introduced?
- What happens to a moved-from object?
- How does `std::move` improve performance?

### Why Should I Care as a Platform Engineer?
- Reduces unnecessary copies.
- Improves performance.
- Makes ownership transfers explicit.
- Frequently appears in Modern C++ codebases.
- Forms the foundation for writing efficient libraries and APIs.

## Common Mistakes
- Thinking `std::move` always moves an object.
- Assuming moved-from objects are invalid.
- Using `std::move` everywhere unnecessarily.
- Forgetting ownership considerations.

## Common Confusions

### Confusion 1

> Does `std::move` actually move an object?

No.

It does not change the object itself. Instead, it returns an rvalue reference (`T&&`), causing the expression to be treated as an rvalue expression so that move operations may be selected.

### Confusion 2

> Can I use an object after moving from it?

Yes.

Moved-from objects remain valid, but their contents should generally not be relied upon unless explicitly documented.

### Confusion 3

> Does `std::move` change the object?

No.

The object remains the same object in memory. What changes is how the compiler interprets the expression.

```text
Object
------
name
 ↓
Same object

Expression
----------
name
 ↓
lvalue expression

std::move(name)
 ↓
rvalue expression
```

## Understanding lvalue and rvalue

Before memorizing definitions, ask only one question:

> Does this object still need its resources?

If YES:

```text
lvalue
-------
Has identity.
Still owns its resources.
Can safely survive beyond this statement.
```

If NO:

```text
rvalue
-------
Temporary object/value.
About to disappear.
Safe candidate for resource transfer.
```

Examples:

```cpp
int age = 30;
```

```text
age   -> lvalue
30    -> rvalue
```

```cpp
std::string name = "Intel";
std::string another = std::move(name);
```

Flow:

```text
name
 ↓
Owns resources
 ↓
std::move(name)
 ↓
Permission granted
 ↓
Move constructor selected
 ↓
Ownership transferred
 ↓
another owns the resources
```

Think of rvalues as temporary hotel rooms. They are about to be vacated, so transferring ownership is inexpensive and safe.

## Interview Questions
1. What is `std::move`?
2. Does `std::move` actually move an object?
3. How does it relate to move semantics?
4. Why is it important for performance?
5. What happens to moved-from objects?

## Interview Traps
- Saying `std::move` physically moves data.
- Treating moved-from objects as destroyed.
- Forgetting that move operations depend upon appropriate move constructors or move assignment operators.
- Saying that `std::move` changes the object instead of the expression.

## Exercise
Implement two examples using `std::string`:
- One using copying.
- One using `std::move()`.

Explain:
- Which object owns the resource.
- Why moving may be more efficient.
- What assumptions should not be made about moved-from objects.

## 5 Minute Revision
- `std::move` gives permission for ownership transfer.
- `std::move` does not actually move anything.
- `std::move` changes the expression category, not the object itself.
- The move constructor or move assignment operator performs the actual transfer.
- lvalue means: "I still need this object."
- rvalue means: "I am about to disappear."
- Moved-from objects remain valid but should not be relied upon.
- Think Ownership -> Permission -> Transfer whenever you see Move Semantics.

## Previous and Next Topics
- Previous: [27. Lvalue & Rvalue References](27-lvalue-rvalue-references.md)
- Current: **28. std::move**
- Next: [29. Rule of Three](29-rule-of-three.md)

## Summary
- `std::move` is a foundational Modern C++ utility.
- It enables efficient ownership transfers and improves performance.
- Understanding what it does not do is just as important as understanding what it does.
- It forms an important bridge between move semantics and the Rule of Five.
- Think of `std::move` as granting permission by producing an rvalue expression; the actual ownership transfer happens later in a move constructor or move assignment operator.

## Status
Status: Topic 28 Completed (Revisit after Topics 29 and 30 for the Rule of Three and the Rule of Five).