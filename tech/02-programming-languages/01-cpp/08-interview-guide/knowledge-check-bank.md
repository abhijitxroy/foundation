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
# C++ Interview Coaching (Part-2) - Knowledge Check Bank

## Topic 5 - Pointers

### Pointer Fundamentals

**Q1.** What is a pointer?

**Q2.** Why do pointers exist?

**Q3.** Which API communicates that `GPUInfo` is mandatory?

```cpp
void foo(GPUInfo& info);
```

or

```cpp
void foo(GPUInfo* info);
```

WHY?

---

**Q4.** Which API would you choose and why?

```cpp
void initializeGPU(GPUInfo& info);
```

or

```cpp
void initializeGPU(GPUInfo* info);
```

Requirement:

> GPU may not be detected on some machines.

---

### Reading Pointer Declarations

**Q5.** Read the following declaration.

```cpp
int* agePtr;
```

---

**Q6.** Read the following declaration.

```cpp
int age = 30;
int* ptr = &age;
```

---

**Q7.** Read the following declaration.

```cpp
GPUInfo* info;
```

What requirement does it communicate?

---

### nullptr

**Q8.** What is wrong here?

```cpp
int* ptr = nullptr;

*ptr = 50;
```

---

**Q9.** What should we do before using this?

```cpp
GPUInfo* info;
```

WHY?

---

### API Design

**Q10.** Which API communicates better requirements?

```cpp
void initializeGPU(GPUInfo& info);
```

or

```cpp
void initializeGPU(GPUInfo* info);
```

Requirement:

> GPU information is available only on supported machines.

---

**Q11.** Which API would you choose?

```cpp
void login(User& user);
```

or

```cpp
void login(User* user);
```

Requirement:

> Login is impossible without user information.

---

**Q12.** Which API would you choose?

```cpp
void initializePrinter(Printer& printer);
```

or

```cpp
void initializePrinter(Printer* printer);
```

Requirement:

> Some machines do not have printers connected.

---

**Q13.** Which design is bad and why?

```cpp
void calculateTax(TaxInfo* info);
```

Requirement:

> Tax information is always available.

---

## Topic 6 - Const Correctness

### const Fundamentals

**Q14.** Which declaration allows modification?

```cpp
int age = 36;
```

or

```cpp
const int age = 36;
```

WHY?

---

**Q15.** Requirement:

> Configuration value should never be modified.

Which design immediately comes to your mind?

---

**Q16.** Requirement:

> API only needs to read GPU information.

Which Modern C++ concept immediately comes to your mind?

---

### const T&

**Q17.** Requirement:

> Employee information must always exist and should never be modified.

Which design immediately comes to your mind?

WHY?

---

**Q18.** What does this API communicate?

```cpp
void printConfiguration(
    const Configuration& config);
```

---

**Q19.** Which API would you choose?

```cpp
void collectStatistics(GPUInfo& info);
```

or

```cpp
void collectStatistics(const GPUInfo& info);
```

Requirement:

> GPU information is mandatory but read only.

---

### const T*

**Q20.** What does the following communicate?

```cpp
const GPUInfo* info;
```

---

**Q21.** Requirement:

> Configuration information is optional and read only.

Which design immediately comes to your mind?

---

## Topic 7 - RAII

### Fundamentals

**Q22.** What problem does RAII solve?

---

**Q23.** Requirement:

> Developers should never manually release resources.

Which Modern C++ concept immediately comes to your mind?

---

**Q24.** Which is better and why?

```
Acquire
   ↓
Use
   ↓
Manual Cleanup
```

or

```
Acquire
   ↓
Use
   ↓
Automatic Cleanup
```

---

### RAII & Smart Pointers

**Q25.** What is RAII?

---

**Q26.** Why is RAII useful?

---

**Q27.** Which Modern C++ feature is built upon RAII?

---

**Q28.** Why do Smart Pointers exist?

---

## Topic 8 - Smart Pointers

### Ownership Models

**Q29.** Requirement:

> Only one component owns GPU resources.

Which Smart Pointer would you choose?

WHY?

---

**Q30.** Requirement:

> Five modules share ownership of the Logger object.

Which Smart Pointer would you choose?

WHY?

---

**Q31.** Requirement:

> A Debugger only observes the User object.

Ownership belongs to another component.

Which Smart Pointer would you choose?

WHY?

---

### Trade-offs

**Q32.** Which Smart Pointer should I always use?

---

**Q33.** Why would you choose `std::unique_ptr`?

---

**Q34.** Why would you choose `std::shared_ptr`?

---

**Q35.** Why would you choose `std::weak_ptr`?

---

### AMD Style Questions

**Q36.** Which Smart Pointer is better?

```cpp
std::unique_ptr
```

or

```cpp
std::shared_ptr
```

---

**Q37.** Requirement:

> GPU Manager exclusively owns GPU resources.

Which Smart Pointer would you choose?

WHY?

---

**Q38.** Requirement:

> Five modules share ownership of a Logger object.

Which Smart Pointer would you choose?

WHY?

---

**Q39.** Requirement:

> A Debugger only observes a User object.

Which Smart Pointer would you choose?

WHY?

---

## Total Questions

| Topic | Questions |
|--------|----------:|
| Pointers | 13 |
| Const Correctness | 8 |
| RAII | 7 |
| Smart Pointers | 11 |
| **Total** | **39** |

# C++ Interview Coaching (Part-3) - Knowledge Check Bank

> **Theme:** Modern C++ Ownership, Move Semantics, Object Lifecycle, Rule of Three/Five/Zero

---

# Module 1: Why Move Semantics?

## Knowledge Check 1

### Q1.
Why can't we simply perform shallow copies for resource-owning classes?

### Q2.
Why is deep copying expensive?

### Q3.
Does Move Semantics physically move heap memory?

### Q4.
What exactly gets transferred during a move?

### Q5.
Why is Move Semantics extremely useful for STL containers?

---

# Module 2: lvalue vs rvalue

## Knowledge Check 2

Classify each expression as **lvalue** or **rvalue**.

### Q1.
```cpp
age
```

### Q2.
```cpp
30
```

### Q3.
```cpp
age + 10
```

### Q4.
```cpp
std::string("Intel")
```

### Q5.
```cpp
getData()
```

### Q6.
```cpp
std::move(age)
```

### Q7.
```cpp
100 * 200
```

### Q8.
```cpp
numbers
```

### Q9.
```cpp
numbers.size()
```

### Q10.
```cpp
"AMD"
```

---

# Module 3: std::move()

## Knowledge Check 3

Consider:

```cpp
std::string name = "Intel";

std::move(name);
```

### Q1.
Is `name` destroyed?

### Q2.
Did ownership transfer happen?

### Q3.
Did anything actually move?

### Q4.
Why was `std::move()` called?

### Q5.
Who performs the actual ownership transfer?

### Q6.
Why can't the compiler automatically assume every lvalue should be moved?

---

# Module 4: std::move() Returns T&&

## Knowledge Check 4

### Q1.
Why can't `std::move()` return `T&`?

### Q2.
Why does `std::move()` return `T&&`?

### Q3.
Does returning `T&&` mean ownership was transferred?

### Q4.
What happens if nobody receives the result of `std::move()`?

### Q5.
Which component actually transfers ownership?

### Q6.
Why is `std::move()` named somewhat misleadingly?

---

# Module 5: Move Constructor

Consider:

```cpp
class Image
{
    int* pixels;

public:
    Image(Image&& other)
    {
        pixels = other.pixels;
        other.pixels = nullptr;
    }
};
```

## Knowledge Check 5

### Q1.
Why is the parameter `Image&& other` instead of `Image& other`?

### Q2.
Why do we copy the pointer instead of the image data?

### Q3.
Why must `other.pixels` be set to `nullptr`?

### Q4.
What would happen if we removed:

```cpp
other.pixels = nullptr;
```

### Q5.
Is the moved-from object destroyed immediately after the move?

### Q6.
In one sentence, what is the real responsibility of a move constructor?

---

# Module 6: Moved-From Objects

Consider:

```cpp
std::string s = "Intel";

std::string t = std::move(s);
```

## Knowledge Check 6

### Q1.
Is `s` destroyed after the move?

### Q2.
Is `s` still a valid object?

### Q3.
Can we assign `"AMD"` to `s`?

### Q4.
Can we safely destroy `s`?

### Q5.
Should we assume `s` still contains `"Intel"`?

### Q6.
In one sentence, what does **"valid but unspecified state"** mean?

### Q7.
As a production engineer, what coding habit would you adopt after moving an object?

---

# Module 7: Move Assignment Operator

Consider:

```cpp
Image img1;
Image img2;

img2 = std::move(img1);
```

## Knowledge Check 7

### Q1.
Why isn't the move constructor called here?

### Q2.
Why must move assignment release existing resources first?

### Q3.
What bug occurs if we forget to release the existing resources?

### Q4.
Why do we still set:

```cpp
other.pixels = nullptr;
```

### Q5.
What is self-move assignment, and why can it be dangerous?

### Q6.
In one sentence, what is the biggest conceptual difference between a move constructor and a move assignment operator?

---

# Module 8: Object Lifecycle

## Knowledge Check 8

### Q1.
A brand-new object is being created from another object.

Which category of function should the compiler consider?

### Q2.
An object already exists, and you want it to take another object's value.

Which category of function should the compiler consider?

### Q3.
Why is the destructor part of the Rule of Three and Rule of Five?

### Q4.
In one sentence,

Why do special member functions exist at all?

---

# Module 9: Discovering the Rule of Three

Consider:

```cpp
class File
{
    FILE* handle;
};
```

## Knowledge Check 9

### Q1.
What does this class own?

### Q2.
When the object dies, what lifecycle question does the compiler ask?

### Q3.
If another object is created from it, why might the default copy constructor be dangerous?

### Q4.
If an existing object is assigned from it, why might the default copy assignment be dangerous?

### Q5.
Complete the sentence:

> The Rule of Three is not really about three functions. It is about...

---

# Module 10: Discovering the Rule of Five

Consider:

```cpp
class Image
{
    int* pixels;
};
```

## Knowledge Check 10

### Q1.
Why does defining a custom destructor often indicate that the Rule of Five may apply?

### Q2.
Which two lifecycle events were added by C++11 that extended the Rule of Three into the Rule of Five?

### Q3.
What is the first question you should ask to decide between a constructor and an assignment operator?

### Q4.
Why is the Rule of Five really about ownership and lifecycle, rather than about memorizing five function names?

### Q5.
Complete the sentence:

> The Rule of Five is not a language rule to memorize. It is...

---

# Module 11: Rule of Zero

Consider the following classes.

### Class A

```cpp
class Image
{
    int* pixels;
};
```

### Class B

```cpp
class Image
{
    std::vector<int> pixels;
};
```

## Knowledge Check 11

### Q1.
Which class is more likely to require the Rule of Five?

### Q2.
Why does `std::vector` make the Rule of Zero possible?

### Q3.
How is the Rule of Zero related to RAII?

### Q4.
As a production engineer, why is the Rule of Zero usually preferred?

### Q5.
Complete the sentence:

> The Rule of Zero is really about...

---

# Module 12: Ownership vs Pointer

Consider:

```cpp
class Image
{
    int* pixels;
};
```

and

```cpp
delete[] pixels;
```

## Knowledge Check 12

### Q1.
What does the `Image` class actually own?

- A. The pointer
- B. The heap memory

### Q2.
After executing:

```cpp
delete[] pixels;
```

Which of the following is destroyed?

- A. The `Image` object
- B. The `pixels` pointer variable
- C. The heap memory that `pixels` points to

---

part-4 is pending...