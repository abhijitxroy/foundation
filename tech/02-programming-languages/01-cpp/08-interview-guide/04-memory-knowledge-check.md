# Memory Knowledge Check

## Pointers

### Pointer Fundamentals

**Q1.** What is a pointer?

---

**Q2.** Why do pointers exist?

---

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

## RAII

### Fundamentals

**Q14.** What problem does RAII solve?

---

**Q15.** Requirement:

> Developers should never manually release resources.

Which Modern C++ concept immediately comes to your mind?

---

**Q16.** Which is better and why?

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

**Q17.** What is RAII?

---

**Q18.** Why is RAII useful?

---

**Q19.** Which Modern C++ feature is built upon RAII?

---

**Q20.** Why do Smart Pointers exist?

---

## Smart Pointers

### Ownership Models

**Q21.** Requirement:

> Only one component owns GPU resources.

Which Smart Pointer would you choose?

WHY?

---

**Q22.** Requirement:

> Five modules share ownership of the Logger object.

Which Smart Pointer would you choose?

WHY?

---

**Q23.** Requirement:

> A Debugger only observes the User object.

Ownership belongs to another component.

Which Smart Pointer would you choose?

WHY?

---

### Trade-offs

**Q24.** Which Smart Pointer should I always use?

---

**Q25.** Why would you choose `std::unique_ptr`?

---

**Q26.** Why would you choose `std::shared_ptr`?

---

**Q27.** Why would you choose `std::weak_ptr`?

---

### AMD Style Questions

**Q28.** Which Smart Pointer is better?

```cpp
std::unique_ptr
```

or

```cpp
std::shared_ptr
```

---

**Q29.** Requirement:

> GPU Manager exclusively owns GPU resources.

Which Smart Pointer would you choose?

WHY?

---

**Q30.** Requirement:

> Five modules share ownership of a Logger object.

Which Smart Pointer would you choose?

WHY?

---

**Q31.** Requirement:

> A Debugger only observes a User object.

Which Smart Pointer would you choose?

WHY?
