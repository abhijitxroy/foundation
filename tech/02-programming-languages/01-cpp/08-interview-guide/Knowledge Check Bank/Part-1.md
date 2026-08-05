# C++ Interview Coaching (Part-1) - Knowledge Check Bank

## Topic 1 - Why C++ Exists

### Q1
Why was C++ created if C already existed?

### Q2
If C++ has classes, why didn't they simply create a completely new language instead of extending C?

### Q3
Why would AMD choose C++ over Java for GPU drivers?

### Q4
If Java is slower because of the JVM, why are many enterprise applications still written in Java instead of C++?

### Q5
Name three advantages of Java over C++.

### Q6
Explain **Zero-Cost Abstraction** in your own words.

---

# Topic 2 - Compilation Process

### Q1
True or False?

The compiler directly converts `main.cpp` into an executable.

Explain why.

---

### Q2

Arrange the following in the correct order:

- Source Code
- Preprocessor
- Compiler
- Assembler
- Object File
- Linker
- Executable

---

### Q3

Why do you think C++ uses multiple stages instead of directly converting `.cpp` files into executables?

---

### Q4

True or False?

The compiler understands `#include`.

Explain why.

---

### Q5

What happens internally when we write?

```cpp
#include <iostream>
```

---

### Q6

Why is conditional compilation useful for a company like AMD?

---

### Q7

True or False?

If compilation fails, the linker can still create an executable.

Explain why.

---

### Q8

Suppose I write:

```cpp
int age = "AMD";
```

Who will complain first?

- Preprocessor
- Compiler
- Linker
- Operating System

Explain why.

---

### Q9

Complete the sentence:

> The compiler is responsible for __________ but NOT responsible for __________.

Provide:

- Three responsibilities
- Three non-responsibilities

---

### Q10 (Production Thinking)

Why are compilation errors generally easier to debug than runtime errors?

---

### Q11

True or False?

Object files can be executed directly.

Explain why.

---

### Q12

AMD has:

- 5000 `.cpp` files

Only:

```text
logger.cpp
```

changed today.

Why is the object-file approach much better than recompiling all 5000 files?

Think like:

- Platform Engineer
- Build Engineer
- CI/CD Engineer

---

### Q13

Complete the sentence:

> The assembler is responsible for __________ but NOT responsible for __________.

Provide:

- Three responsibilities
- Three non-responsibilities

---

### Q14 (Production Thinking)

Why do large companies invest so much effort into improving build times?

Think about:

- Developer Productivity
- CI/CD
- Releases
- Feedback Loops
- Infrastructure Cost
- Engineering Efficiency

---

### Q15

Suppose compilation succeeds.

Can we guarantee that the executable will be created?

Explain why.

---

### Q16

Suppose:

```cpp
main.cpp
```

calls:

```cpp
calculateSalary();
```

but the implementation is missing.

Who will complain?

- Compiler
- Assembler
- Linker
- Operating System

Explain why.

---

### Q17

Complete the sentence:

> The linker is responsible for __________ but NOT responsible for __________.

Provide:

- Three responsibilities
- Three non-responsibilities

---

### Q18 (Production Thinking)

Why are linker errors generally more difficult to debug than compilation errors?

---

# Topic 3 - Variables (Fast Track)

### Q1

Why do you think Modern C++ developers care so much about:

- Object Lifetime
- Ownership

---

# Topic 4 - References (Deep Dive)

## Part 1

### Q1

What will be the output?

```cpp
int age = 36;

int& years = age;

years = 50;
```

What are the values of:

```cpp
age = ?
years = ?
```

Explain why.

---

### Q2

Why might references be better than copying large objects?

Think about:

- Performance
- Memory
- Production Systems

---

## Part 2

### Q3

Will this compile?

```cpp
int& age;
```

Explain why.

---

### Q4

What happens here?

```cpp
int age = 36;

int salary = 100;

int& years = age;

years = salary;
```

After execution:

```cpp
age = ?
salary = ?
years = ?
```

Explain why.

---

### Q5

Suppose we write:

```cpp
void processData(Data& data);
```

What is this function communicating to another developer?

Think about:

- Validity
- Intent
- API Design

---

## Part 3

### Q6

Which is more expensive?

```cpp
Employee employee2 = employee1;
```

or

```cpp
Employee& employee2 = employee1;
```

Explain why.

---

### Q7

Complete the sentence:

> References are frequently used in Modern C++ because _______________________.

---

## Part 4

### Q8

Which one communicates:

> I promise NOT to modify your object?

```cpp
Employee

Employee&

const Employee&
```

Explain why.

---

### Q9

Suppose:

```cpp
GPUInfo
```

is a **100 MB** object.

Which design would you choose?

```cpp
void process(GPUInfo info);

void process(GPUInfo& info);

void process(const GPUInfo& info);
```

Requirements:

- Modification is NOT required.
- Performance is important.

Explain why.

---

### Q10

Complete the sentence:

> `const T&` is heavily used in Modern C++ because ____________________________.

---

## Final Review

### Q11

Which design would you choose?

```cpp
void generateReport(GPUInformation ? info);
```

Options:

```cpp
GPUInformation

GPUInformation&

const GPUInformation&
```

Requirements:

- Modification is NOT required.
- Performance is important.
- `GPUInformation` is a large object.

Explain your reasoning.

---

### Q12

Complete the sentence:

> `const T&` is heavily used in Modern C++ because ____________________________.

Use only:

- Valid Objects
- Read-only Access
- Performance
- API Design
- No Copying

---

# Revision Summary

| Topic | Questions |
|--------|----------:|
| Why C++ Exists | 6 |
| Compilation Process | 18 |
| Variables | 1 |
| References | 12 |
| **Total** | **37** |

---
