# 20. Virtual Functions

## Topic Overview
Virtual functions are a core concept in C++ that enable runtime polymorphism. They allow derived classes to override methods in base classes, so the correct method is called based on the actual object type, not just the pointer or reference type.

## Why Should You Learn This Topic?
- Virtual functions are fundamental for building flexible and extensible object-oriented systems in C++.
- They are essential for interview questions related to polymorphism and class hierarchies, especially for AMD SMTS and similar roles.
- Understanding virtual functions helps avoid common pitfalls and bugs in C++ codebases.

## Learning Objectives
- Understand what virtual functions are and how they enable runtime polymorphism.
- Learn how to declare and use virtual functions in C++.
- Grasp the differences between C++ and Java in method overriding.
- Recognize the importance of virtual destructors.
- Identify common mistakes and interview traps.

---

## Beginner Level – What are Virtual Functions?
A virtual function in C++ is a member function declared with the `virtual` keyword in a base class, allowing derived classes to override it. When you call a virtual function through a base class pointer or reference, C++ determines at runtime which function to execute based on the actual object type.

**In short:** Virtual functions enable runtime polymorphism.

## Why Do Virtual Functions Exist?
Without virtual functions, C++ uses the type of the pointer or reference to decide which function to call (static binding). Virtual functions enable dynamic binding, so the function of the actual object type is called, not just the type of the pointer.

## Real World Analogy
Think of a remote control (base class pointer) that can operate different devices (derived objects). If you press "play," you want the action to match the actual device (TV, DVD, etc.), not just the generic remote's idea of "play."

## Java Developer's Corner
- In Java, **all non-static methods are virtual by default** (unless marked `final` or `static`). You override methods without extra keywords.
- In C++, you must use the `virtual` keyword in the base class for runtime polymorphism to work.

## Simple Examples

### Example Without `virtual`
```cpp
class Vehicle {
public:
    void start() { std::cout << "Vehicle starting\n"; }
};

class Car : public Vehicle {
public:
    void start() { std::cout << "Car starting\n"; }
};

Vehicle* v = new Car();
v->start(); // Output: Vehicle starting
```
**Explanation:** The base class method is called because `start()` is not virtual.

### Example With `virtual`
```cpp
class Vehicle {
public:
    virtual void start() { std::cout << "Vehicle starting\n"; }
};

class Car : public Vehicle {
public:
    void start() override { std::cout << "Car starting\n"; }
};

Vehicle* v = new Car();
v->start(); // Output: Car starting
```
**Explanation:** The derived class method is called because `start()` is virtual.

## Engineer Level Thinking
**How does C++ achieve this?**  
When you declare a function as `virtual`, C++ internally uses a mechanism called a **vtable** (virtual table) and a **vptr** (virtual pointer). The vtable holds pointers to the most-derived implementations of virtual functions for a class. The vptr is a hidden pointer in each object, pointing to the class's vtable. When you call a virtual function, C++ uses the vptr to look up the correct function at runtime.

*(No need to memorize vtable/vptr implementation, but be aware of their existence for interviews.)*

## Production Examples
- Virtual functions are used in frameworks, plugin systems, GUI libraries, and anywhere you want to extend functionality via inheritance.
- For example, base `Shape` class with a virtual `draw()` method, overridden by `Circle`, `Square`, etc.

## AMD SMTS Perspective
- Interviewers want to see if you understand dynamic vs static binding.
- They may ask about performance trade-offs, when to use or avoid virtual functions, and how C++ differs from Java.

## Common Mistakes
- **Forgetting to declare the base function as virtual:** Overrides won't work as expected.
- **Not using virtual destructors:** Can lead to resource leaks (will be discussed more in upcoming topics).
- **Blindly making all functions virtual:** Virtual functions have a small runtime cost (due to vtable lookup and object size). Use them only when necessary.

## Common Confusions
- Thinking that method overriding "just works" like in Java—remember, in C++ you must use `virtual` explicitly.
- Confusing function overloading (same function name, different parameters) with overriding (same signature, different implementation).

## Interview Questions
1. What is a virtual function? Why do we need it?
2. How does C++ implement virtual functions internally?
3. What happens if you call a non-virtual function through a base class pointer?
4. Why are virtual destructors important?
5. How is this different from Java's method overriding?

## Interview Traps
- Not mentioning the need for `virtual` keyword in C++ (unlike Java).
- Not knowing about vtable/vptr.
- Not knowing about the cost of virtual functions.
- Forgetting about the importance of virtual destructors.

## Exercise
1. Write a base class `Animal` with a virtual function `speak()`. Derive `Dog` and `Cat`, override `speak()`, and demonstrate calling `speak()` through a base class pointer.
2. Remove the `virtual` keyword and observe the output.

## 5 Minute Revision
- Virtual functions enable runtime (dynamic) polymorphism in C++.
- Use `virtual` in the base class for methods you want to override.
- C++ requires explicit `virtual`; Java does not (non-static methods are virtual by default).
- Virtual functions use vtable/vptr for dynamic dispatch.
- Virtual destructors are important (details in next topics).
- Use virtual functions only when needed; they have a small runtime cost.

## Previous and Next Topics
- Previous: [19. Polymorphism](19-polymorphism.md)
- Current: **20. Virtual Functions**
- Next: [21. Pure Virtual Functions](21-pure-virtual-functions.md)

## Summary
- Virtual functions are essential for runtime polymorphism in C++.
- They must be explicitly marked with `virtual` in the base class.
- Java developers should note the difference in default behavior.
- Knowing how and when to use virtual functions is key for AMD SMTS interviews.

## Status
Status: Topic 20 Completed (Revisit after Topics 21 and 22 for pure virtual functions and abstract classes).