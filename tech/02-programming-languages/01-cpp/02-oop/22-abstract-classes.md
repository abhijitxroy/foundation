# 22. Abstract Classes

## Topic Overview
- Difficulty: Beginner
- Interview Frequency: High
- AMD SMTS Relevance: High
- Estimated Study Time: 20-30 Minutes

## Why Should You Learn This Topic?
Abstract classes help developers design reusable and extensible software by defining common behavior while preventing incomplete objects from being created. They are widely used in frameworks, SDKs, testing libraries, and production systems.

## Learning Objectives
- Understand what an abstract class is.
- Learn why abstract classes exist.
- Understand how they relate to pure virtual functions.
- Compare abstract classes in Java and C++.
- Identify common interview questions and mistakes.

## Beginner Level – What are Abstract Classes?
An abstract class is a class that cannot be instantiated directly. It is designed to act as a blueprint for derived classes.

Simply put:

> An abstract class defines what derived classes should do, without necessarily defining how everything should be done.

In C++, a class becomes abstract when it contains at least one pure virtual function.

## Why Do Abstract Classes Exist?
They exist to:
- Define common behavior.
- Provide reusable code.
- Enforce contracts for derived classes.
- Prevent incomplete implementations from being used.
- Improve extensibility and maintainability.

## Real World Analogy
Think of a job role called `Employee`.

An organization may define that every employee must:
- Work.
- Submit reports.
- Follow company policies.

However, an `Employee` is not necessarily a real person you hire. Instead, actual employees are:
- Software Engineers.
- Managers.
- Architects.
- Designers.

Similarly, an abstract class defines common requirements while concrete classes provide the actual implementation.

## Java Developer's Corner
Java developers will find this concept very familiar.

```java
abstract class Vehicle {
    abstract void start();
}
```

Equivalent C++:

```cpp
class Vehicle {
public:
    virtual void start() = 0;
};
```

Both languages support abstract classes. However, Java developers should remember that C++ requires explicit use of pure virtual functions (`= 0`) to make a class abstract.

## Simple Examples

```cpp
#include <iostream>

class Vehicle {
public:
    virtual void start() = 0;

    void display() {
        std::cout << "Vehicle Information" << std::endl;
    }
};

class Car : public Vehicle {
public:
    void start() override {
        std::cout << "Car is starting" << std::endl;
    }
};
```

Usage:

```cpp
Car car;
car.start();
car.display();
```

Invalid usage:

```cpp
Vehicle vehicle;
```

The above code will fail because `Vehicle` is an abstract class.

## Engineer Level Thinking
Abstract classes are useful when:
- Multiple classes share common behavior.
- Derived classes must provide their own implementations.
- Stable interfaces are important.

They allow developers to combine:
- Reusable code.
- Runtime polymorphism.
- Extensible designs.

## Production Examples
Abstract classes are commonly used in:
- Testing frameworks.
- Logging systems.
- Plugin architectures.
- Cloud SDKs.
- Graphics libraries.
- Compiler infrastructure.

For example, multiple database providers may inherit from a common abstract database interface while providing different implementations.

## AMD SMTS Perspective
Abstract classes are useful for designing:
- Platform libraries.
- Developer tooling.
- Compiler components.
- Hardware abstraction layers.
- Reusable SDK components.

Interviewers may ask when to choose:
- Abstract classes.
- Composition.
- Interfaces.
- Virtual functions.

Understanding the trade-offs is more important than memorizing definitions.

## Common Mistakes
- Attempting to instantiate abstract classes.
- Forgetting to implement all pure virtual functions.
- Using inheritance unnecessarily.
- Creating deep inheritance hierarchies.

## Common Confusions
### Confusion 1

> Is every class containing virtual functions abstract?

No. Only classes containing at least one pure virtual function become abstract.

### Confusion 2

> Can an abstract class contain implemented methods?

Yes. Abstract classes may contain:
- Normal functions.
- Virtual functions.
- Pure virtual functions.
- Data members.

## Interview Questions
1. What is an abstract class?
2. How does a class become abstract in C++?
3. Can an abstract class contain implemented methods?
4. Why do we use abstract classes in production systems?
5. How are abstract classes different from pure virtual functions?

## Interview Traps
- Saying that abstract classes contain only pure virtual functions.
- Forgetting that abstract classes may provide reusable implementations.
- Confusing abstract classes with interfaces.

## Exercise
Implement:
- An abstract class `Shape` containing `draw()` as a pure virtual function.
- `Circle` and `Rectangle` classes implementing `draw()`.
- Add a normal member function called `display()` inside the abstract class and call it from derived objects.

## 5 Minute Revision
- Abstract classes cannot be instantiated.
- A class becomes abstract when it contains at least one pure virtual function.
- Abstract classes may contain both implemented and pure virtual functions.
- They are widely used for designing extensible APIs and frameworks.
- They work closely with runtime polymorphism.

## Previous and Next Topics
- Previous: [21. Pure Virtual Functions](21-pure-virtual-functions.md)
- Current: **22. Abstract Classes**
- Next: [23. Friend Classes and Functions](23-friend-classes-functions.md)

## Summary
- Abstract classes provide common behavior and define contracts for derived classes.
- They improve extensibility, maintainability, and API design.
- Java developers can think of them similarly to Java abstract classes, with C++ using pure virtual functions to make a class abstract.

## Status
Status: Topic 22 Completed (Revisit after Topic 23 for controlled access using friend classes and functions).