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
# C++ Interview Coaching (Part-4) - Notes & Knowledge Check

> **Theme:** Phase-2 — STL Through Ownership
>
> **Lesson-1:** Why does `std::vector` exist when C already has arrays?

---

# Core Idea

Modern C++ did not create `std::vector` because arrays were bad.

It created `std::vector` because programmers were repeatedly making mistakes while managing **dynamic memory**, **ownership**, and **resizing** manually.

`std::vector` solves those problems automatically.

---

# Why C Arrays Become a Problem

## Problem 1 — Fixed Size

A C array has a fixed size.

```cpp
int numbers[100];
```

If tomorrow you need 1000 elements, the array cannot grow.

The compiler cannot predict how much data your program will need at runtime.

---

## Problem 2 — Manual Memory Management

In C, if the size is unknown, you allocate memory manually.

```cpp
int* numbers = malloc(n * sizeof(int));
```

Later you must remember to free it.

```cpp
free(numbers);
```

If you forget, memory leaks.

If you free twice, your program may crash.

---

## Problem 3 — Arrays Lose Their Size

```cpp
int arr[5];
```

Inside the same function, the compiler knows the size.

But after passing it to another function,

```cpp
void process(int arr[])
```

it becomes

```cpp
int*
```

The size information is lost.

So you must pass the size separately.

```cpp
process(arr, size);
```

If you pass the wrong size, bugs happen.

---

## Problem 4 — Arrays Cannot Grow

Imagine memory like movie theatre seats.

```
Seat 21
Seat 22 ← Your Array
Seat 23 ← Someone Else
Seat 24
```

Now your array needs one more element.

Can it simply occupy Seat 23?

No.

Someone else already owns that seat.

So the compiler cannot simply "stretch" the array.

Instead it must

1. Find a larger empty place.
2. Copy all existing elements.
3. Release the old memory.

This is exactly how `std::vector` grows internally.

---

# Heap vs Stack (Simple Understanding)

Imagine your house.

You have

- 🏠 Your room
- 📦 A rented warehouse

---

## Stack = Your Room

Small.

Fast.

Temporary.

Objects automatically disappear when the function ends.

Example

```cpp
int x;
```

---

## Heap = Warehouse

Large.

Used when you don't know the required size beforehand.

Example

```cpp
std::vector<int> numbers;
```

The vector object itself lives on the stack.

Its elements live on the heap.

```
Stack

+----------------+
| vector object  |
| pointer -------+------------------+
| size           |                  |
| capacity       |                  |
+----------------+                  |
                                    |
                                    |
Heap                                |
+-----------------------------------+
| 10 | 20 | 30 | ...                |
+-----------------------------------+
```

The vector owns that heap memory.

---

# What is std::vector?

Simple definition

> A vector is a class that automatically manages a dynamically allocated array.

It

- allocates memory
- grows when needed
- keeps track of size
- automatically releases memory

You simply use it.

---

# What is RAII?

RAII means

> Acquire the resource when the object is created.
>
> Release the resource automatically when the object is destroyed.

---

## Simple Analogy

Without a chauffeur

You must

- start the car
- drive
- park
- lock it
- return the keys

Everything is your responsibility.

With a chauffeur

You only say

> Take me to the airport.

The chauffeur automatically handles everything else.

`std::vector` behaves the same way.

You simply use it.

It automatically manages memory.

---

# Why is std::vector considered RAII?

Without vector

```cpp
int* data = new int[100];
```

You must remember

```cpp
delete[] data;
```

If you forget,

Memory Leak.

---

With vector

```cpp
std::vector<int> data;
```

When the vector goes out of scope,

its destructor automatically releases memory.

---

# Interview Definition

Instead of saying

> Vector is an RAII wrapper.

Prefer saying

> `std::vector` is a class that automatically manages a dynamically allocated array. It allocates memory when needed, grows dynamically, keeps track of its size, and automatically releases memory when it is destroyed.

---

# Knowledge Check

---

## Q1.

Which owns memory?

```cpp
int arr[10];
```

OR

```cpp
std::vector<int> v;
```

### Answer

Both own memory, but differently.

**C Array**

- Owns fixed memory on the stack (when locally declared).
- Size is fixed.
- Cannot grow.

**std::vector**

- Owns dynamically allocated memory on the heap.
- Can grow dynamically.
- Automatically manages the memory using RAII.

---

## Q2.

Why doesn't the compiler automatically resize a C array?

### Answer

Think of memory as movie theatre seats.

Suppose your array occupies

```
Seat 21
Seat 22
Seat 23
```

Now you need one more seat.

Unfortunately,

Seat 24 is already occupied by someone else.

The compiler cannot push other objects away.

So it must

- find a larger empty place,
- copy all elements,
- delete the old memory.

That is exactly what `std::vector` does internally.

---

## Q3.

Complete the sentence.

> `std::vector` is basically __________ applied to a dynamic array.

### Answer

RAII

Or, more completely,

> `std::vector` is RAII applied to a dynamically allocated array.

---

## Q4.

Suppose a function loads a log file whose size is unknown until runtime.

Which would you choose?

```cpp
int buffer[1000];
```

OR

```cpp
std::vector<int> buffer;
```

### Answer

Choose

```cpp
std::vector<int> buffer;
```

Reason

- The file size is unknown at runtime.
- A fixed-size C array may be too small or waste memory.
- `std::vector` grows dynamically as needed.
- It automatically manages memory using RAII.
- It prevents memory leaks and lets you focus on the application logic instead of memory management.

---

# Interview One-Liners

### What is std::vector?

A class that automatically manages a dynamically allocated array.

---

### Why was std::vector introduced?

To solve the problems of fixed-size arrays and manual memory management.

---

### Why not use C arrays?

Because they

- have fixed size,
- cannot grow,
- lose size information when passed to functions,
- require manual memory management.

---

### Why is std::vector safer?

Because it automatically manages memory, keeps track of its size, grows dynamically, and follows RAII.

---

# Key Takeaways

- Arrays are fixed-size.
- Dynamic memory requires manual management.
- Manual memory management is error-prone.
- `std::vector` owns heap memory.
- `std::vector` automatically manages memory.
- `std::vector` follows RAII.
- The vector object lives on the stack.
- The vector's elements live on the heap.
- When a vector needs more space, it allocates a larger memory block, moves/copies the elements, and releases the old memory.
---

# C++ Interview Coaching (Part-4) - Notes & Knowledge Check

> **Theme:** Phase-2 — STL Through Ownership
>
> **Lesson-1:** Why does `std::vector` exist when C already has arrays?

---

# Core Idea

Modern C++ did not create `std::vector` because arrays were bad.

It created `std::vector` because programmers were repeatedly making mistakes while managing **dynamic memory**, **ownership**, and **resizing** manually.

`std::vector` solves those problems automatically.

---

# Why C Arrays Become a Problem

## Problem 1 — Fixed Size

A C array has a fixed size.

```cpp
int numbers[100];
```

If tomorrow you need 1000 elements, the array cannot grow.

The compiler cannot predict how much data your program will need at runtime.

---

## Problem 2 — Manual Memory Management

In C, if the size is unknown, you allocate memory manually.

```cpp
int* numbers = malloc(n * sizeof(int));
```

Later you must remember to free it.

```cpp
free(numbers);
```

If you forget, memory leaks.

If you free twice, your program may crash.

---

## Problem 3 — Arrays Lose Their Size

```cpp
int arr[5];
```

Inside the same function, the compiler knows the size.

But after passing it to another function,

```cpp
void process(int arr[])
```

it becomes

```cpp
int*
```

The size information is lost.

So you must pass the size separately.

```cpp
process(arr, size);
```

If you pass the wrong size, bugs happen.

---

## Problem 4 — Arrays Cannot Grow

Imagine memory like movie theatre seats.

```
Seat 21
Seat 22 ← Your Array
Seat 23 ← Someone Else
Seat 24
```

Now your array needs one more element.

Can it simply occupy Seat 23?

No.

Someone else already owns that seat.

So the compiler cannot simply "stretch" the array.

Instead it must

1. Find a larger empty place.
2. Copy all existing elements.
3. Release the old memory.

This is exactly how `std::vector` grows internally.

---

# Heap vs Stack (Simple Understanding)

Imagine your house.

You have

- 🏠 Your room
- 📦 A rented warehouse

---

## Stack = Your Room

Small.

Fast.

Temporary.

Objects automatically disappear when the function ends.

Example

```cpp
int x;
```

---

## Heap = Warehouse

Large.

Used when you don't know the required size beforehand.

Example

```cpp
std::vector<int> numbers;
```

The vector object itself lives on the stack.

Its elements live on the heap.

```
Stack

+----------------+
| vector object  |
| pointer -------+------------------+
| size           |                  |
| capacity       |                  |
+----------------+                  |
                                    |
                                    |
Heap                                |
+-----------------------------------+
| 10 | 20 | 30 | ...                |
+-----------------------------------+
```

The vector owns that heap memory.

---

# What is std::vector?

Simple definition

> A vector is a class that automatically manages a dynamically allocated array.

It

- allocates memory
- grows when needed
- keeps track of size
- automatically releases memory

You simply use it.

---

# What is RAII?

RAII means

> Acquire the resource when the object is created.
>
> Release the resource automatically when the object is destroyed.

---

## Simple Analogy

Without a chauffeur

You must

- start the car
- drive
- park
- lock it
- return the keys

Everything is your responsibility.

With a chauffeur

You only say

> Take me to the airport.

The chauffeur automatically handles everything else.

`std::vector` behaves the same way.

You simply use it.

It automatically manages memory.

---

# Why is std::vector considered RAII?

Without vector

```cpp
int* data = new int[100];
```

You must remember

```cpp
delete[] data;
```

If you forget,

Memory Leak.

---

With vector

```cpp
std::vector<int> data;
```

When the vector goes out of scope,

its destructor automatically releases memory.

---

# Interview Definition

Instead of saying

> Vector is an RAII wrapper.

Prefer saying

> `std::vector` is a class that automatically manages a dynamically allocated array. It allocates memory when needed, grows dynamically, keeps track of its size, and automatically releases memory when it is destroyed.

---

# Knowledge Check

---

## Q1.

Which owns memory?

```cpp
int arr[10];
```

OR

```cpp
std::vector<int> v;
```

### Answer

Both own memory, but differently.

**C Array**

- Owns fixed memory on the stack (when locally declared).
- Size is fixed.
- Cannot grow.

**std::vector**

- Owns dynamically allocated memory on the heap.
- Can grow dynamically.
- Automatically manages the memory using RAII.

---

## Q2.

Why doesn't the compiler automatically resize a C array?

### Answer

Think of memory as movie theatre seats.

Suppose your array occupies

```
Seat 21
Seat 22
Seat 23
```

Now you need one more seat.

Unfortunately,

Seat 24 is already occupied by someone else.

The compiler cannot push other objects away.

So it must

- find a larger empty place,
- copy all elements,
- delete the old memory.

That is exactly what `std::vector` does internally.

---

## Q3.

Complete the sentence.

> `std::vector` is basically __________ applied to a dynamic array.

### Answer

RAII

Or, more completely,

> `std::vector` is RAII applied to a dynamically allocated array.

---

## Q4.

Suppose a function loads a log file whose size is unknown until runtime.

Which would you choose?

```cpp
int buffer[1000];
```

OR

```cpp
std::vector<int> buffer;
```

### Answer

Choose

```cpp
std::vector<int> buffer;
```

Reason

- The file size is unknown at runtime.
- A fixed-size C array may be too small or waste memory.
- `std::vector` grows dynamically as needed.
- It automatically manages memory using RAII.
- It prevents memory leaks and lets you focus on the application logic instead of memory management.

---

# Interview One-Liners

### What is std::vector?

A class that automatically manages a dynamically allocated array.

---

### Why was std::vector introduced?

To solve the problems of fixed-size arrays and manual memory management.

---

### Why not use C arrays?

Because they

- have fixed size,
- cannot grow,
- lose size information when passed to functions,
- require manual memory management.

---

### Why is std::vector safer?

Because it automatically manages memory, keeps track of its size, grows dynamically, and follows RAII.

---

# Key Takeaways

- Arrays are fixed-size.
- Dynamic memory requires manual management.
- Manual memory management is error-prone.
- `std::vector` owns heap memory.
- `std::vector` automatically manages memory.
- `std::vector` follows RAII.
- The vector object lives on the stack.
- The vector's elements live on the heap.
- When a vector needs more space, it allocates a larger memory block, moves/copies the elements, and releases the old memory.

---

# Lesson-2 — How does std::vector grow internally?

## Core Idea

A `std::vector` is a dynamically allocated array that can grow when more space is needed.

Unlike a C array, a vector automatically manages

- memory allocation,
- resizing,
- cleanup,

using RAII.

---

# Simple Analogy

Imagine you have a notebook.

Initially, it has only one page.

As you keep writing, all pages become full.

Can you magically add one page inside the notebook?

No.

You buy a bigger notebook.

Then

- copy all your notes,
- continue writing,
- throw away the old notebook.

This is exactly how `std::vector` grows internally.

---

# What does a std::vector actually store?

When we create

```cpp
std::vector<int> numbers;
```

The vector object stores only

- Pointer
- Size
- Capacity

The actual elements are stored in heap memory.

```
Stack

+----------------------+
| vector object        |
| pointer ------------+----------------+
| size = 3            |                |
| capacity = 5        |                |
+---------------------+                |
                                       |
                                       |
Heap                                   |
+--------------------------------------+
| 10 | 20 | 30 |    |                  |
+--------------------------------------+
```

---

# What is Size?

Size means

> Number of elements currently stored inside the vector.

Example

```cpp
numbers.push_back(10);
numbers.push_back(20);
numbers.push_back(30);
```

Result

```
Size = 3
```

---

# What is Capacity?

Capacity means

> Number of elements that can be stored before the vector needs more memory.

Example

```
Capacity = 5

10 20 30 _ _
```

Only three elements are used.

Two spaces are still available.

---

# Size vs Capacity

Example

```
10 20 30
```

```
Size = 3

Capacity = 8
```

The vector contains only three elements.

But memory for eight elements has already been allocated.

---

# What happens when push_back() is called?

Suppose

```
Size = 3

Capacity = 5
```

```cpp
numbers.push_back(40);
```

Result

```
10 20 30 40 _
```

No new memory allocation happens because there is still empty space.

Only

- Size increases.
- Capacity remains the same.

---

# What happens when the vector becomes full?

Suppose

```
Size = 5

Capacity = 5
```

```cpp
numbers.push_back(60);
```

The vector cannot grow in the same memory location.

So it performs these steps.

1. Allocate a larger memory block.
2. Move (or copy) all existing elements into the new memory.
3. Release the old memory.
4. Update its internal pointer.
5. Insert the new element.

---

# Why doesn't vector increase capacity by one every time?

Imagine every element is a 100 MB image.

If capacity increased by only one element,

every insertion would require

- allocating new memory,
- moving/copying all existing elements,
- releasing old memory.

This would make every insertion very expensive.

Instead, the vector usually grows like

```
1

↓

2

↓

4

↓

8

↓

16

↓

32
```

This greatly reduces the number of reallocations.

> **Note:** The exact growth factor depends on the compiler's STL implementation, but thinking of it as approximately doubling is a good mental model.

---

# Why Move Semantics Improved std::vector

During reallocation,

old elements must be transferred into the new memory.

Without move semantics,

every element would be deeply copied.

For large objects,

this would be very expensive.

With move semantics,

ownership of resources is transferred instead of performing deep copies.

This makes vector reallocation much faster.

---

# Interview Definitions

## What is Size?

> Number of elements currently stored inside the vector.

---

## What is Capacity?

> Total number of elements that can be stored before the vector needs to allocate more memory.

---

## What happens when a vector becomes full?

> The vector allocates a larger memory block, moves (or copies) existing elements into the new memory, releases the old memory, updates its internal pointer, and finally inserts the new element.

---

# Knowledge Check

---

## Q1.

What is the difference between

```cpp
numbers.size()
```

and

```cpp
numbers.capacity()
```

### Answer

`numbers.size()`

- Returns the number of elements currently stored inside the vector.

`numbers.capacity()`

- Returns the maximum number of elements the vector can hold before allocating more memory.

---

## Q2.

Suppose

```
Size = 5

Capacity = 5
```

You execute

```cpp
numbers.push_back(60);
```

Explain, step by step, what happens internally.

### Answer

Since the vector has no free space,

it performs the following steps.

1. Allocates a larger memory block.
2. Moves (or copies) all existing elements into the new memory.
3. Releases the old memory.
4. Updates its internal pointer to the new memory.
5. Inserts the new element (`60`).

---

## Q3.

Why doesn't `std::vector` increase its capacity by exactly one element every time it becomes full?

### Answer

Increasing the capacity by only one element would require memory allocation and moving/copying all existing elements every time a new element is inserted after the vector becomes full.

This would result in frequent reallocations and poor performance.

Instead, the vector increases its capacity by a larger amount (typically around doubling), which greatly reduces the number of reallocations.

---

## Q4.

How did move semantics improve the performance of `std::vector` during reallocation?

### Answer

During reallocation, the vector must transfer existing elements into a larger memory block.

Without move semantics, each element would be deeply copied, which is expensive for large objects.

With move semantics, ownership of resources is transferred instead of copying the resources.

This significantly improves both memory usage and performance.

---

## Q5.

Why is the method called `push_back()` instead of `push()`?

### Answer

A vector allows insertion at different positions.

The name `push_back()` clearly indicates that the new element is inserted at the **end** of the vector.

This makes the operation explicit and unambiguous.

Containers like `std::stack` use `push()` because elements can only be inserted at one place—the top of the stack.

---

# Interview One-Liners

### What is the difference between size and capacity?

`size()` is the number of elements currently stored.

`capacity()` is the amount of allocated storage available before reallocation is required.

---

### What happens when a vector becomes full?

The vector allocates a larger memory block, moves (or copies) the existing elements, releases the old memory, updates its pointer, and then inserts the new element.

---

### Why does std::vector grow by more than one element?

To reduce the number of reallocations and improve performance.

---

### Why did move semantics make std::vector faster?

Because ownership of resources is transferred instead of performing expensive deep copies during reallocation.

---

# Key Takeaways

- A vector object stores a pointer, size, and capacity.
- Vector elements are stored in heap memory.
- `size()` represents the number of stored elements.
- `capacity()` represents the allocated storage before reallocation.
- When capacity is full, the vector allocates a larger memory block.
- Existing elements are moved (or copied) into the new memory.
- The old memory is released automatically.
- Move semantics make vector reallocation significantly more efficient.
- `push_back()` explicitly inserts an element at the end of the vector.

---

---

# Lesson-3 — Why does std::vector invalidate pointers, references, and iterators?

## Core Idea

A `std::vector` stores its elements in **heap memory**.

When the vector runs out of capacity, it allocates a **new and larger memory block**, moves (or copies) the existing elements into it, releases the old memory, and updates its internal pointer.

Any pointer, reference, or iterator that was referring to the old memory now points to released memory and becomes invalid.

---

# Simple Analogy

Imagine you saved your home address in Flipkart.

```
Old Address

Bangalore-100
```

After one year, you move to

```
New Address

Kolkata-200
```

But you forget to update the saved delivery address.

When Flipkart delivers your package, it still goes to

```
Bangalore-100
```

The saved address is now outdated.

Exactly the same thing happens with a pointer.

A pointer still stores the old address even though the object has moved to a new location.

This is called a **Dangling Pointer**.

---

# What happens during Vector Reallocation?

Suppose

```
Size = 5

Capacity = 5
```

Memory

```
Address-A

10
20
30
40
50
```

Now

```cpp
numbers.push_back(60);
```

The vector performs these steps.

1. Allocates a larger memory block (Address-B).
2. Moves (or copies) the existing elements into the new memory.
3. If move semantics are used, the ownership of each element's internal resources is transferred during the move.
4. Releases the old memory block (Address-A).
5. Updates its internal pointer.
6. Inserts the new element (`60`).

---

# What is a Dangling Pointer?

A dangling pointer is

> A pointer that still stores an old memory address after the object at that address has already been destroyed or moved.

Using a dangling pointer results in **Undefined Behavior**.

---

# What happens to References?

References behave similarly to pointers.

If a reference refers to an element inside a vector,

and the vector reallocates,

the reference still refers to the old memory.

Since that memory has been released,

the reference becomes invalid.

---

# What happens to Iterators?

Iterators also point to elements inside the vector.

If reallocation occurs,

existing iterators continue pointing to the old memory,

which has already been released.

Therefore,

they become invalid.

---

# Why can't std::vector update my pointers automatically?

Because the vector owns only its heap memory.

It does **not** own your

- pointers,
- references,
- iterators,
- variables,
- member variables,
- global variables.

Since the vector doesn't know where your pointers are stored,

it cannot automatically update them.

---

# Production Bug

```cpp
std::vector<int> numbers;

numbers.push_back(10);

int* ptr = &numbers[0];

numbers.push_back(20);

std::cout << *ptr;
```

Is this always safe?

No.

It depends on whether `push_back()` caused a reallocation.

If reallocation happened,

`ptr` becomes a dangling pointer.

Using it results in Undefined Behavior.

---

# Interview Definitions

## What is a Dangling Pointer?

> A pointer that still points to memory that has already been released or no longer contains the original object.

---

## Why does std::vector invalidate pointers?

> During reallocation, the vector allocates a new memory block, moves (or copies) the existing elements into it, releases the old memory, and updates its internal pointer. Any pointer referring to the old memory becomes invalid.

---

## Why can't std::vector repair my pointers?

> Because the vector owns only its internal memory. It does not own the programmer's pointers, references, or iterators, so it cannot update them.

---

# Knowledge Check

---

## Q1.

What is a **Dangling Pointer**?

Explain it using the Flipkart delivery address analogy.

### Answer

Imagine I saved my Bangalore home address in Flipkart.

After one year, I moved to Kolkata but forgot to update the saved delivery address.

Flipkart still delivers to the old Bangalore address because it only knows the old location.

Similarly,

after `std::vector` reallocates its memory,

a pointer still stores the old memory address even though the object has moved to a new memory location.

The pointer now refers to memory that is no longer valid.

This is called a **Dangling Pointer**.

---

## Q2.

Why does `std::vector` invalidate pointers after reallocation?

### Answer

During reallocation,

the vector

1. Allocates a larger memory block.
2. Moves (or copies) the existing elements into the new memory.
3. If move semantics are used, the ownership of the element's internal resources is transferred during the move.
4. Releases the old memory block.
5. Updates its internal pointer.

Any pointer still pointing to the old memory block now refers to released memory and becomes invalid.

---

## Q3.

Can references become invalid after vector reallocation?

Why?

### Answer

Yes.

References behave similarly to pointers.

If a reference refers to an element inside the old memory block,

and the vector reallocates,

the old memory is released.

The reference still refers to that old memory,

so it becomes invalid.

---

## Q4.

Why can't `std::vector` automatically update your pointers after moving its elements?

### Answer

Because the vector owns only its heap memory.

The programmer owns the pointers, references, and iterators.

Since the vector doesn't know where those pointers are stored,

it cannot automatically update them after reallocation.

---

## Q5.

Suppose you wrote

```cpp
std::vector<int> numbers;

numbers.push_back(10);

int* ptr = &numbers[0];

numbers.push_back(20);

std::cout << *ptr;
```

Is this code always safe?

### Answer

No.

This code is **not guaranteed to be safe**.

If `push_back()` does **not** trigger reallocation,

the pointer remains valid.

If `push_back()` triggers reallocation,

the vector allocates new memory, moves the elements, releases the old memory, and updates its internal pointer.

The pointer still points to the old memory,

so it becomes a dangling pointer.

Using it results in Undefined Behavior.

---

# Interview One-Liners

### What is a Dangling Pointer?

A pointer that refers to memory that has already been released or no longer contains the original object.

---

### Why does std::vector invalidate pointers?

Because reallocation moves elements to a new memory block and releases the old one.

---

### Can references become invalid after vector reallocation?

Yes.

References still refer to the old memory after reallocation, so they become invalid.

---

### Why can't std::vector repair my pointers?

Because it owns only its internal memory, not the programmer's pointers.

---

### Is `push_back()` always safe if I already have a pointer to a vector element?

No.

If `push_back()` causes reallocation, the pointer becomes dangling.

---

# Key Takeaways

- A vector stores its elements in heap memory.
- When capacity becomes full, the vector allocates a larger memory block.
- Existing elements are moved (or copied) into the new memory.
- If move semantics are used, the ownership of the element's internal resources is transferred.
- The old memory block is released.
- Pointers, references, and iterators referring to the old memory become invalid.
- A dangling pointer refers to released memory.
- `push_back()` may invalidate pointers if reallocation occurs.
- `std::vector` cannot update programmer-owned pointers automatically because it does not own them.

---

###### part-4 is WIP...