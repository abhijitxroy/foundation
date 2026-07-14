# Phase 2 – Object-Oriented Programming (Quick Revision)

> Use this document for 10-15 minute interview revision before technical discussions.

---

## 17. Encapsulation

- Controls how an object's state can change.
- Hide implementation details and expose only what is necessary.
- Prefer behavior over exposing internal data.
- `private` protects internal state.
- Good encapsulation improves maintainability and API design.

**Interview Keywords:**
- Data Hiding
- Validation
- API Stability
- Maintainability

---

## 18. Inheritance

- Models an `is-a` relationship.
- Promotes code reuse.
- Use only when inheritance represents a true relationship.
- Prefer composition when appropriate.
- `protected` becomes useful with inheritance.

**Interview Keywords:**
- is-a Relationship
- Composition over Inheritance
- Code Reuse
- Access Specifiers

---

## 19. Polymorphism

- Means "many forms".
- Enables parent references/pointers to work with child objects.
- Compile-time: Function overloading.
- Runtime: Function overriding.
- Inheritance enables polymorphism but does not provide it by itself.

**Interview Keywords:**
- Compile-time Polymorphism
- Runtime Polymorphism
- Dynamic Binding

---

## 20. Virtual Functions

- Enable runtime polymorphism in C++.
- Must be declared using the `virtual` keyword.
- C++ requires explicit `virtual`; Java does not.
- Uses vtable and vptr internally.
- Virtual destructors are important when using inheritance.

**Interview Keywords:**
- Dynamic Dispatch
- vtable
- vptr
- Virtual Destructor

---

## 21. Pure Virtual Functions

- Declared using `= 0`.
- Define mandatory behavior for derived classes.
- Cannot provide complete objects by themselves.
- Commonly used to define contracts and interfaces.

**Interview Keywords:**
- `= 0`
- Interface Design
- Contracts
- Runtime Polymorphism

---

## 22. Abstract Classes

- Cannot be instantiated.
- Contain at least one pure virtual function.
- May also contain implemented member functions.
- Useful for extensible API design.

**Interview Keywords:**
- Abstract Class
- Reusable Code
- Extensibility
- Interfaces

---

## 23. Friend Classes and Functions

- Provide controlled access to private members.
- Should be used sparingly.
- Friendship is not inherited, mutual, or transitive.
- Prefer good API design before using friendship.

**Interview Keywords:**
- Controlled Access
- Friend Function
- Friend Class
- Encapsulation

---

## AMD SMTS Interview Checklist

Before an interview, make sure you can confidently answer:

- What is encapsulation and why is it important?
- When should inheritance be used over composition?
- What is polymorphism and how does C++ implement runtime polymorphism?
- Why do we need virtual functions?
- What does `= 0` mean in C++?
- Why can't we instantiate abstract classes?
- When should friendship be used?
- Why are virtual destructors important?

---

## Phase 2 Summary

| Topic | Status |
|-------|--------|
| Encapsulation | Completed |
| Inheritance | Completed |
| Polymorphism | Completed |
| Virtual Functions | Completed |
| Pure Virtual Functions | Completed |
| Abstract Classes | Completed |
| Friend Classes & Functions | Completed |

---

**Next Phase:** `03-modern-cpp/24-raii.md`

> Quick Tip: Focus on explaining concepts using trade-offs, production examples, and engineering decisions rather than memorized definitions during interviews.