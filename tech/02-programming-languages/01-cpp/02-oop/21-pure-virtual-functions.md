# 21. Pure Virtual Functions

## Topic Overview
- Difficulty: Beginner
- Interview Frequency: High
- AMD SMTS Relevance: High
- Estimated Study Time: 20-30 Minutes

## Why Should You Learn This Topic?
Pure virtual functions allow C++ developers to define contracts that derived classes must implement. They are the foundation of interfaces and abstract classes in Modern C++. Understanding them is important for designing extensible libraries, frameworks, and production-quality APIs.

## Learning Objectives
- Understand what pure virtual functions are.
- Learn why they exist.
- Differentiate virtual functions from pure virtual functions.
- Understand their relationship with abstract classes.
- Identify common interview questions and mistakes.

## Beginner Level – What are Pure Virtual Functions?
A pure virtual function is a virtual function that has no implementation in the base class and must be implemented by derived classes.

In C++, a pure virtual function is declared using `= 0`.

```cpp
virtual void start() = 0;
```

Simply put:

> A pure virtual function says: "Every derived class must provide its own implementation."

## Why Do Pure Virtual Functions Exist?
They exist to:
- Define a common contract.
- Force derived classes to implement required behavior.
- Prevent incomplete objects from being created.
- Improve extensibility and maintainability.

## Real World Analogy
Think of a company policy document.

Every employee must:
- Submit timesheets.
- Follow security policies.
- Attend mandatory training.

The company defines the requirements but does not define how every department performs its daily work.

Similarly, a base class defines what must exist, while derived classes define how it works.

## Java Developer's Corner
Java developers can think of pure virtual functions as being very similar to methods declared in interfaces or abstract classes.

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

## Simple Examples

```cpp
#include <iostream>

class Vehicle {
public:
    virtual void start() = 0;
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
```

Invalid usage:

```cpp
Vehicle vehicle;
```

The above code will fail because `Vehicle` is an abstract type.

## Engineer Level Thinking
Pure virtual functions help us design extensible systems. Rather than exposing implementation details, they define behavior that derived classes must support.

This is particularly useful when building:
- Frameworks
- SDKs
- Testing libraries
- Plugin architectures
- Platform tooling

## Production Examples
Examples include:
- Logging frameworks.
- Payment gateways.
- Storage providers.
- Cloud SDKs.
- Graphics rendering libraries.

Each implementation behaves differently while following the same contract.

## AMD SMTS Perspective
AMD engineers frequently work with:
- Platform libraries
- Developer tooling
- Testing frameworks
- Compiler components
- Hardware abstractions

Pure virtual functions allow teams to define stable interfaces while permitting different implementations underneath.

## Common Mistakes
- Confusing virtual functions with pure virtual functions.
- Attempting to instantiate abstract classes.
- Forgetting to implement all pure virtual functions in derived classes.
- Blindly using inheritance when composition is more appropriate.

## Common Confusions
### Confusion 1

> Is every virtual function a pure virtual function?

No. A virtual function may provide a default implementation. Pure virtual functions do not.

### Confusion 2

> Can an abstract class contain normal functions?

Yes. Abstract classes may contain:
- Normal member functions.
- Virtual functions.
- Pure virtual functions.
- Data members.

## Interview Questions
1. What is a pure virtual function?
2. How is it different from a virtual function?
3. What does `= 0` mean?
4. Why can't we instantiate an abstract class?
5. Where would you use pure virtual functions in production systems?

## Interview Traps
- Saying that pure virtual functions and virtual functions are identical.
- Forgetting that a class becomes abstract if it contains at least one pure virtual function.
- Not relating pure virtual functions to interfaces and contracts.

## Exercise
Implement:
- `Shape` as a base class containing a pure virtual function `draw()`.
- `Circle` and `Square` classes implementing `draw()`.
- Call `draw()` using a base class pointer.

## 5 Minute Revision
- Pure virtual functions are declared using `= 0`.
- They define mandatory behavior for derived classes.
- Classes containing pure virtual functions become abstract classes.
- Abstract classes cannot be instantiated.
- Pure virtual functions are widely used to design interfaces and extensible APIs.

## Previous and Next Topics
- Previous: [20. Virtual Functions](20-virtual-functions.md)
- Current: **21. Pure Virtual Functions**
- Next: [22. Abstract Classes](22-abstract-classes.md)

## Summary
- Pure virtual functions define contracts for derived classes.
- They enable flexible and extensible software design.
- They are closely related to abstract classes and runtime polymorphism.
- Java developers can think of them as abstract methods in abstract classes.

## Status
Status: Topic 21 Completed (Revisit after Topic 22 for abstract classes and interface design).