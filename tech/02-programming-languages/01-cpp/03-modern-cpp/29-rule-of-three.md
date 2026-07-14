# 29. Rule of Three

## Topic Overview
- Importance: ★★★★ HIGHLY IMPORTANT
- Interview Frequency: High
- Estimated Study Time: 30-45 Minutes

## Why Should You Learn This Topic?
The Rule of Three teaches us that if a class manages resources manually, we must carefully define how those resources are copied and destroyed. Understanding this topic will make the Rule of Five and Rule of Zero much easier to learn.

## Learning Objectives
- Understand what the Rule of Three is.
- Learn why it exists.
- Identify the three special member functions involved.
- Recognize common resource management problems.
- Prepare for common interview questions.

## Beginner Level – What is the Rule of Three?
The Rule of Three states:

> If a class needs a custom destructor, it will usually also need a custom copy constructor and copy assignment operator.

The three functions are:
- Destructor
- Copy Constructor
- Copy Assignment Operator

These functions work together to manage resources safely.

## Why Does the Rule of Three Exist?
Imagine a class manually managing memory using pointers. If two objects accidentally share the same resource, problems may occur such as:
- Memory leaks.
- Double deletion.
- Unexpected behavior.

The Rule of Three exists to ensure that:
- Resources are copied correctly.
- Resources are released safely.
- Ownership semantics remain clear.

## Real World Analogy
Imagine owning a house.

When ownership changes, we must decide:
- Who owns the house?
- Can it be copied?
- Who is responsible for handing over the keys?
- Who is responsible when ownership ends?

Similarly, resource-managing classes must define how ownership behaves.

## Java Developer's Corner
Java developers rarely need to think about:
- Copy constructors.
- Manual resource management.
- Custom destructors.

Modern C++ gives developers much greater control over object lifetime and ownership semantics.

## Simple Examples

The Rule of Three involves:

```cpp
class Logger {
public:
    Logger(const Logger& other);

    Logger& operator=(const Logger& other);

    ~Logger();
};
```

For now, focus on understanding that these functions work together.

> We will revisit copy constructors and assignment operators in greater detail later in the course.

## Engineer Level Thinking
Ask yourself:

> Who owns the resource?

and

> What happens if another object copies it?

If your class manually manages resources, you must carefully define:
- Construction.
- Copying.
- Assignment.
- Cleanup.

The Rule of Three exists to prevent resource management bugs.

## Production Examples
The Rule of Three becomes important when working with:
- Legacy C++ codebases.
- Resource-managing classes.
- Native libraries.
- File handlers.
- Custom memory management.

Modern C++ often prefers Smart Pointers and the Rule of Zero, but understanding the Rule of Three remains important.

## AMD SMTS Perspective
Interviewers may ask:
- What is the Rule of Three?
- Why was it introduced?
- What problems does it solve?
- Why is ownership semantics important?
- How is it related to the Rule of Five?

### Why Should I Care as a Platform Engineer?
- Helps identify resource management bugs.
- Improves maintainability of native libraries.
- Important when reviewing legacy C++ code.
- Builds a strong foundation for Modern C++ design decisions.

## Common Mistakes
- Forgetting one of the three functions.
- Performing shallow copies unintentionally.
- Ignoring ownership semantics.
- Assuming Smart Pointers make understanding resource management unnecessary.

## Common Confusions

### Confusion 1

> Is the Rule of Three outdated?

No.

Although Modern C++ promotes the Rule of Zero when possible, understanding the Rule of Three remains important.

### Confusion 2

> Does every class require the Rule of Three?

No.

Only classes that manually manage resources typically require it.

## Interview Questions
1. What is the Rule of Three?
2. Why do we need it?
3. Which three member functions are involved?
4. What problems does it solve?
5. Is it still relevant in Modern C++?

## Interview Traps
- Saying every class must implement the Rule of Three.
- Forgetting that it primarily applies to resource-managing classes.
- Ignoring ownership semantics when discussing copying behavior.

## Exercise
Create a simple class and identify:
- Who owns the resource?
- What happens when the object is copied?
- Which special member functions may need customization?

Explain your reasoning before writing any code.

## 5 Minute Revision
- The Rule of Three consists of the destructor, copy constructor and copy assignment operator.
- It primarily applies to classes managing resources manually.
- Ownership semantics are central to understanding the Rule of Three.
- It prevents resource management bugs.
- It naturally leads to the Rule of Five in Modern C++.

## Previous and Next Topics
- Previous: [28. std::move](28-std-move.md)
- Current: **29. Rule of Three**
- Next: [30. Rule of Five](30-rule-of-five.md)

## Summary
- The Rule of Three teaches developers how to manage resource ownership safely.
- Understanding why it exists is more important than memorizing the three functions.
- It provides an important bridge between traditional C++ and Modern C++ resource management techniques.

## Status
Status: Topic 29 Completed (Revisit after Topics 30 and 31 for the Rule of Five and Rule of Zero concepts).