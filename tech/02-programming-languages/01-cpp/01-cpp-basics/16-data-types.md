# Topic 4 - Data Types

## What is a Data Type?

A data type tells the compiler:

- What kind of data will be stored.
- How much memory is required.
- What operations are allowed.

Examples:

```cpp
int age = 36;
double salary = 42.5;
char grade = 'A';
bool passed = true;
```

---

## Why do Data Types exist?

Data types help the compiler:

- Allocate memory.
- Perform type checking.
- Improve performance.
- Prevent invalid operations.

Without data types, programs cannot reliably understand how data should be stored and manipulated.

---

## Remember

Every data type has:

- Size (implementation dependent in some cases)
- Range of values
- Allowed operations

Remember:

> Data Type = Memory + Range + Operations

---

## Commonly Used Data Types

```cpp
int
float
double
char
bool
long
short
```

Examples:

```cpp
int age = 36;

float price = 10.5f;

double pi = 3.14159;

char grade = 'A';

bool passed = true;
```

---

## Java Comparison

```text
Java
-----
int
float
double
char
boolean


C++
-----
int
float
double
char
bool
```

The syntax is similar, but the size of some C++ data types can vary depending on the compiler and platform.

---

## Production Examples

Choosing the correct data type matters when working with:

- Performance-critical applications
- Memory-constrained systems
- GPU programming
- Embedded systems
- Large-scale data processing

Using an inappropriate data type may waste memory or reduce performance.

---

## Common Mistakes

- Assuming every data type has the same size on all platforms.
- Using int when a larger type is required.
- Ignoring overflow and underflow.
- Choosing floating-point types when integer arithmetic is sufficient.

---

## Interview Questions

1. What is a data type?
2. Why do data types exist?
3. What is the difference between float and double?
4. Why can the size of int differ across platforms?
5. What problems can occur when choosing an incorrect data type?

---

## Interview Tips

Remember:

```text
Data Type
    ↓
Memory
    ↓
Range
    ↓
Operations
```

Interviewers frequently ask about:

- int
- float
- double
- char
- bool
- Memory consumption
- Overflow problems

---

## Senior-Level Thinking

Data type selection affects:

- Performance
- Memory utilization
- Portability
- System design decisions

Senior engineers select data types based on requirements rather than habit.

---

## 5 Minutes Revision

- Data types define how data is stored and manipulated.
- Different data types have different memory requirements and ranges.
- Some C++ data type sizes are platform dependent.
- Choosing the correct data type improves performance and memory utilization.
- Data type selection is an important design decision.

---

## Status

- Topic Status: Pending Discussion
- Difficulty: Easy
- Interview Frequency: High

---

## Navigation

- Previous: [Topic 3 - Variables](./03-variables.md)
- Next: [Topic 5 - References](./05-references.md)