# 19. Polymorphism

## Topic Overview
Polymorphism is a core concept in object-oriented programming (OOP) that allows objects to take on many forms. It enables the same interface to be used for different underlying data types.

## Why Should You Learn This Topic?
- Makes code more flexible and maintainable.
- Encourages reusable and extensible designs.
- Essential for mastering OOP and acing technical interviews.

## Learning Objectives
- Understand what polymorphism means in OOP.
- Distinguish between compile-time and runtime polymorphism.
- Recognize where and how to use polymorphism in real-world code.
- Identify common mistakes and interview traps.

## Beginner Level – What is Polymorphism?
Polymorphism literally means "many forms". In OOP, it allows a single interface to represent different underlying forms (data types).

For example, you can write code that works with a parent class reference, but at runtime, it can refer to objects of different child classes.

## Why Does Polymorphism Exist?
Polymorphism enables you to write code that is more general and flexible. You can add new types without changing existing code, following the Open/Closed Principle.

## Real World Analogy
Think of a universal remote (parent interface) that can control different devices (TV, AC, Sound System). The remote sends the same "power" command, but each device responds in its own way.

## Java Developer's Corner
In Java, polymorphism is achieved mainly through method overriding (runtime polymorphism) and method overloading (compile-time polymorphism). You can use a parent class reference to point to a child class object.

## Simple Examples
```java
class Vehicle {
    void start() {
        System.out.println("Vehicle starts");
    }
}

class Car extends Vehicle {
    void start() {
        System.out.println("Car starts");
    }
}

public class Main {
    public static void main(String[] args) {
        Vehicle myVehicle = new Car(); // Parent reference to child object
        myVehicle.start(); // Output: Car starts
    }
}
```
Here, `myVehicle` is a reference of type `Vehicle`, but it refers to a `Car` object. The method that gets called depends on the actual object type at runtime.

## Engineer Level Thinking
- **Compile-time polymorphism**: Achieved via method overloading (same method name, different parameters). Decided at compile time.
- **Runtime polymorphism**: Achieved via method overriding (child class provides its own implementation). Decided at runtime.
- *Note*: We'll cover runtime polymorphism and virtual functions in detail in [20. Virtual Functions](20-virtual-functions.md).

## Production Examples
- Logging frameworks where different loggers implement the same interface.
- Payment gateways where each payment method (credit card, PayPal, etc.) implements a common interface.
- UI components where a base class reference can point to buttons, text fields, etc.

## AMD SMTS Perspective
Understanding polymorphism is crucial for designing scalable and maintainable systems. It allows AMD engineers to write code that is adaptable to new hardware or features with minimal changes.

## Common Mistakes
- Assuming inheritance alone provides polymorphism. Inheritance enables it, but you need method overriding for true polymorphism.
- Using inheritance when composition is more appropriate (i.e., when there isn't a true "is-a" relationship).

## Common Confusions
- Confusing method overloading (compile-time) with method overriding (runtime).
- Thinking that simply creating subclasses achieves polymorphism—actual benefit comes from using parent references.

## Interview Questions
- What is polymorphism? Give real-world examples.
- How is compile-time polymorphism different from runtime polymorphism?
- Can you achieve polymorphism without inheritance?
- Why is composition sometimes preferred over inheritance?

## Interview Traps
- Not mentioning that inheritance alone does not provide polymorphism.
- Forgetting to discuss both compile-time and runtime polymorphism.
- Overcomplicating the explanation—keep it simple and focused.

## Exercise
1. Create a `Shape` class with a `draw()` method. Implement `Circle` and `Square` as subclasses. Write code to store them in a `Shape[]` array and call `draw()` on each.
2. Identify if your use case needs inheritance or composition.

## 5 Minute Revision
- Polymorphism = "many forms"
- Achieved via parent reference pointing to child objects.
- Two types: compile-time (overloading), runtime (overriding).
- Inheritance enables polymorphism, but does not provide it by itself.
- Prefer composition when "is-a" relationship does not exist.

## Previous and Next Topics
- Previous: [18. Inheritance](18-inheritance.md)
- Current: **19. Polymorphism**
- Next: [20. Virtual Functions](20-virtual-functions.md)

## Summary
Polymorphism allows objects to take many forms, making code more flexible and reusable. It is a foundational OOP concept, especially important for Java developers and AMD SMTS interviews. Remember: inheritance enables polymorphism, but you need method overriding for runtime polymorphism, which will be covered in the next topic.

## Status
Status: Topic 19 Completed (Revisit after Topic 20 for runtime polymorphism and virtual functions).