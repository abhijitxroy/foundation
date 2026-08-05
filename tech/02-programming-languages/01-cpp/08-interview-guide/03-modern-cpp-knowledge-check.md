# Modern C++ Knowledge Check

## Const Correctness

### const Fundamentals

**Q1.** Which declaration allows modification?

```cpp
int age = 36;
```

or

```cpp
const int age = 36;
```

WHY?

---

**Q2.** Requirement:

> Configuration value should never be modified.

Which design immediately comes to your mind?

---

**Q3.** Requirement:

> API only needs to read GPU information.

Which Modern C++ concept immediately comes to your mind?

---

### const T&

**Q4.** Requirement:

> Employee information must always exist and should never be modified.

Which design immediately comes to your mind?

WHY?

---

**Q5.** What does this API communicate?

```cpp
void printConfiguration(
    const Configuration& config);
```

---

**Q6.** Which API would you choose?

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

**Q7.** What does the following communicate?

```cpp
const GPUInfo* info;
```

---

**Q8.** Requirement:

> Configuration information is optional and read only.

Which design immediately comes to your mind?
