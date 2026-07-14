# 23. Friend Classes and Functions

## Topic Overview
- Difficulty: Beginner
- Interview Frequency: Medium
- AMD SMTS Relevance: Medium
- Estimated Study Time: 20-30 Minutes

## Why Should You Learn This Topic?
Friend classes and functions provide controlled access to the private and protected members of a class. Although they should be used sparingly, they are useful when two classes need to collaborate closely without exposing implementation details publicly.

## Learning Objectives
- Understand what friend functions are.
- Understand what friend classes are.
- Learn why they exist.
- Identify appropriate use cases.
- Recognize common interview questions and mistakes.

## Beginner Level – What are Friend Classes and Functions?
Normally, private members of a class cannot be accessed from outside the class.

Friend functions and friend classes are exceptions to this rule.

Simply put:

> Friendship allows controlled access to private members without making them public.

Friendship should be granted only when it is truly necessary.

## Why Do Friend Classes and Functions Exist?
They exist to:
- Allow closely related classes to collaborate.
- Preserve encapsulation without exposing data publicly.
- Simplify certain operator overloading scenarios.
- Improve API design in specific situations.

## Real World Analogy
Think of a bank locker.

Normally, only the owner can access it. However, the owner may authorize a trusted family member to access it when necessary.

Similarly, friendship grants special access privileges to trusted classes or functions while keeping the data hidden from everyone else.

## Java Developer's Corner
Java does not provide an exact equivalent of C++ friendship.

Java developers often use:
- Package-private access.
- Nested classes.
- Getter methods.
- Interfaces.

C++ friendship is more explicit and fine-grained.

## Simple Examples

### Friend Function

```cpp
#include <iostream>

class Employee {
private:
    int salary = 100;

    friend void displaySalary(Employee& employee);
};

void displaySalary(Employee& employee) {
    std::cout << employee.salary << std::endl;
}
```

Usage:

```cpp
Employee employee;
displaySalary(employee);
```

### Friend Class

```cpp
class Engine;

class Car {
private:
    int horsePower = 200;

    friend class Engine;
};

class Engine {
public:
    void display(Car& car) {
        std::cout << car.horsePower << std::endl;
    }
};
```

## Engineer Level Thinking
Friendship should not become a shortcut to bypass encapsulation.

Before using friendship, ask yourself:
- Is there a true collaboration requirement?
- Would a public API be better?
- Would composition solve the problem?

Prefer good class design first. Use friendship only when it improves clarity and maintainability.

## Production Examples
Friendship is occasionally useful for:
- Testing utilities.
- Operator overloading.
- Closely coupled library components.
- Serialization frameworks.
- Compiler infrastructure.

It is far less common than inheritance or polymorphism in everyday application code.

## AMD SMTS Perspective
Interviewers rarely expect heavy usage of friendship. Instead, they expect candidates to understand:
- Why friendship exists.
- Its advantages and disadvantages.
- When not to use it.

A senior engineer should know that exposing everything as `public` is usually worse than granting limited friendship when appropriate.

## Common Mistakes
- Making excessive use of friendship.
- Using friendship to avoid proper API design.
- Breaking encapsulation unnecessarily.
- Forgetting that friendship is not inherited.

## Common Confusions

### Confusion 1

> Is friendship mutual?

No.

If class A is a friend of class B, it does not automatically mean class B is a friend of class A.

### Confusion 2

> Is friendship inherited?

No.

Friendship is neither inherited nor transitive.

## Interview Questions
1. What is a friend function?
2. What is a friend class?
3. When should friendship be used?
4. Is friendship inherited in C++?
5. What are the disadvantages of friendship?

## Interview Traps
- Saying that friendship breaks encapsulation completely.
- Assuming friendship is inherited.
- Using friendship as the default design choice.

## Exercise
Implement:
- A class `Student` containing a private member called `marks`.
- A friend function that prints the student's marks.
- A friend class that calculates the student's grade.

## 5 Minute Revision
- Friendship provides controlled access to private members.
- Friend functions and classes should be used sparingly.
- Friendship is not mutual, inherited, or transitive.
- Prefer good API design before using friendship.
- Friendship is useful in selected production scenarios.

## Previous and Next Topics
- Previous: [22. Abstract Classes](22-abstract-classes.md)
- Current: **23. Friend Classes and Functions**
- Next: [24. RAII](../03-modern-cpp/24-raii.md)

## Summary
- Friendship allows controlled access without exposing implementation details publicly.
- It should be used thoughtfully and sparingly.
- Understanding when not to use friendship is just as important as knowing how to use it.

## Status
Status: Topic 23 Completed (Object-Oriented Programming phase completed. Continue with Topic 24 for RAII and Modern C++ resource management concepts).