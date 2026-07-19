# Topic 6 - Pointers

## Interview Priority

- MUST KNOW (High Interview ROI)
    - Mandatory vs Optional objects.
    - Reading APIs.
    - `nullptr`.
    - Dereferencing (`*ptr`).
    - Requirement analysis.
    - Common interview questions.
    - Production thinking.
- GOOD TO KNOW
    - Arrays and pointers.
    - C APIs.
- LOW ROI (Fast Track)
    - Pointer arithmetic.
    - Function pointers.
    - Multi-level pointers.

---

## Mental Model

Never memorize:

> Pointer = Memory Address.

Think:

> Pointer knows where an object exists.

Easy English:

> A pointer may point to an object or may point to nothing (`nullptr`).

---

## Why do Pointers Exist?

Pointers provide flexibility in API design.

For now, remember:

> I use pointers when an object is optional or may not always be available.

Examples:

- GPU information may not be available.
- Printer may not be connected.
- Network information may not be available.
- Bluetooth may not be supported on some machines.

---

## Requirement First Thinking

```text
Mandatory Object?
       ↓
   Reference (&)


Optional Object?
       ↓
    Pointer (*)
       ↓
Check Availability
       ↓
    Use Safely
```

Always start with:

> What is the requirement?

Never start with:

> Should I use a pointer?

---

## Reading Pointer Declarations

```cpp
int* agePtr;
```

Read as:

> agePtr is a pointer to integer.

```cpp
GPUInfo* info;
```

Read as:

> info is a pointer to GPUInfo.

Do NOT read:

> Integer star pointer.

---

## Understanding `&`

```cpp
int age = 36;

&age;
```

Easy English:

> Where is age?

---

## Understanding `nullptr`

```cpp
GPUInfo* info = nullptr;
```

Easy English:

> GPU information is currently unavailable.

or

> info currently points to nothing.

Pointers are optional by design, so they should be checked before use.

---

## Understanding `*`

```cpp
int age = 36;
int* ptr = &age;
```

```cpp
*ptr;
```

Easy English:

> Give me the actual object.

```cpp
*ptr = 40;
```

means:

> Change the object's value to 40.

---

## API Design Thinking

Mandatory requirement:

```cpp
void login(User& user);
```

Communicates:

> User information is mandatory.

Optional requirement:

```cpp
void initializeGPU(GPUInfo* info);
```

Communicates:

> GPU information is optional.

Requirement drives the design choice.

---

## Production Thinking

Senior engineers ask:

> What happens if this object is unavailable?

Examples:

- GPU unavailable?
- Printer unavailable?
- Network unavailable?
- File unavailable?
- Configuration unavailable?

Optional objects should always be validated before use.

```cpp
if(info != nullptr)
{
    // safe to use
}
```

---

## Common Mistakes

- Using a pointer without checking availability.
- Dereferencing `nullptr`.
- Choosing pointers when the object is actually mandatory.
- Thinking pointers are only about memory addresses.
- Over explaining interview answers.

---

## High ROI Interview Questions

### What is a pointer?

> A pointer knows where an object exists. It may point to an object or to nothing (`nullptr`).

### Why do pointers exist?

> I use pointers when I need flexibility. For example, when an object is optional and may not always be available.

### Why are you checking for `nullptr`?

> Because the object is optional, so I should verify that it is available before using it.

### Why did you choose a pointer instead of a reference?

> Because the object is optional and may not always be available.

### What does `*ptr` mean?

> It gives me the actual object that the pointer points to.

---

## Interview Communication Formula

Always prefer:

```text
Requirement
      ↓
Design Choice
      ↓
Reason
      ↓
STOP
```

Examples:

> I would choose `GPUInfo*` because GPU information is optional.

> I would choose `User&` because user information is mandatory.

Keep answers short and requirement driven.

---

## Biggest Learnings

```text
Reference
     ↓
Mandatory Object


--------------------

Pointer
     ↓
Flexible Design
     ↓
(Optional Object for now)


--------------------

nullptr
     ↓
Nothing Available


--------------------

*ptr
     ↓
Actual Object


--------------------

Requirement
     ↓
Design Choice
     ↓
Reason
     ↓
STOP
```

---

## Status

- Topic Status: Completed
- Difficulty: Beginner Friendly
- Interview Frequency: Very High
- Priority: MUST KNOW

---

## Navigation

- Previous: [Topic 4 - References](./04-references.md)
- Next: [Topic 6 - const-correctness](./06-const-correctness.md)