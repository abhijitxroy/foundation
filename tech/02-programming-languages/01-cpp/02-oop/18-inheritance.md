# 18. Inheritance

## Topic Overview
Inheritance is a core concept in object-oriented programming (OOP) that allows one class (the child or subclass) to acquire the properties and behaviors (fields and methods) of another class (the parent or superclass).

## Why Should You Learn This Topic?
- Promotes code reuse.
- Helps organize code into logical hierarchies.
- Enables polymorphism (covered in the next topic).
- Makes code easier to maintain and extend.

## Learning Objectives
- Understand what inheritance is and why it is useful.
- Recognize the `is-a` relationship.
- Know how to implement inheritance in Java and C++.
- Learn about `protected` members.
- Be aware of common mistakes and confusions.

## Beginner Level – What is Inheritance?
Inheritance lets you create a new class based on an existing class. The new class automatically gets the fields and methods of the existing class, and you can add or override features as needed.

## Why Does Inheritance Exist?
- To avoid code duplication.
- To express a natural relationship between types (e.g., a Car is a Vehicle).
- To enable polymorphism (using a parent type to refer to any child type).

## Real World Analogy
Think of a "Vehicle" as a general category. "Car", "Bike", and "Truck" are all types of vehicles. They inherit common features (like having wheels or the ability to move) but also have their own unique features.

## Java Developer's Corner
- Use the `extends` keyword to inherit from a class.
- Use `super` to refer to the parent class.
- `protected` members are accessible in subclasses (more meaningful now compared to encapsulation).

## Simple Examples

### Java Example
```java
class Vehicle {
    protected int wheels;
    public void move() {
        System.out.println("Vehicle is moving");
    }
}

class Car extends Vehicle {
    public Car() {
        wheels = 4;
    }
    public void honk() {
        System.out.println("Car is honking");
    }
}
```

### C++ Example
```cpp
class Vehicle {
protected:
    int wheels;
public:
    void move() {
        std::cout << "Vehicle is moving" << std::endl;
    }
};

class Car : public Vehicle {
public:
    Car() {
        wheels = 4;
    }
    void honk() {
        std::cout << "Car is honking" << std::endl;
    }
};
```

## Engineer Level Thinking
- Inheritance models an `is-a` relationship. For example, a Car **is a** Vehicle.
- Not all relationships should use inheritance. Sometimes, a `has-a` (composition) relationship is better.
- Overusing inheritance can make code hard to maintain.

**Note:** In modern software design, composition is often preferred over inheritance unless a true `is-a` relationship exists.

## Production Examples
- GUI frameworks: Button inherits from Widget.
- Game development: Enemy inherits from Character.
- Web frameworks: AdminUser inherits from User.

## AMD SMTS Perspective
- Use inheritance judiciously. Prefer composition for flexibility.
- Inheritance can introduce tight coupling and fragile base class problems.
- Understand access specifiers: `protected` is especially relevant for inheritance, allowing child classes to access certain members that are hidden from outside code.

## Common Mistakes
- Using inheritance when composition is better.
- Forgetting to mark overridden methods (e.g., with `@Override` in Java).
- Not understanding access levels (`protected`, `private`, `public`).
- Not initializing the parent class properly.

## Common Confusions
- Confusing `is-a` (inheritance) with `has-a` (composition).
- Thinking inheritance is always the best way to reuse code.
- Overriding vs. overloading methods.

## Interview Questions
1. What is inheritance? Give an example.
2. What is the difference between `protected` and `private`?
3. When would you prefer composition over inheritance?
4. What is the `is-a` relationship?

## Interview Traps
- Giving a "has-a" relationship as an example of inheritance.
- Not knowing the limitations or dangers of deep inheritance hierarchies.
- Not understanding the impact of access specifiers in inheritance.

## Exercise
Create a base class called `Animal` with a method `makeSound()`. Then, create a subclass called `Dog` that overrides `makeSound()` to print "Woof!".

## 5 Minute Revision
- Inheritance allows a class to reuse code from another class.
- The subclass "is a" type of the superclass.
- Use `extends` in Java, `: public` in C++.
- `protected` members are accessible to subclasses.
- Prefer composition unless there is a clear `is-a` relationship.

## Previous and Next Topics
- Previous: [17. Encapsulation](17-encapsulation.md)
- Current: **18. Inheritance**
- Next: [19. Polymorphism](19-polymorphism.md)

## Summary
Inheritance is a key OOP concept that enables code reuse and logical hierarchies. It introduces the `is-a` relationship and makes `protected` members meaningful. Use inheritance carefully and prefer composition when appropriate.

## Status
Status: Topic 18 Completed (Revisit after Topics 19 and 20 for polymorphism and virtual functions).