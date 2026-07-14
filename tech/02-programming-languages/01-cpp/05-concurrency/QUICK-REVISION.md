# Phase 5 – Concurrency (Quick Revision)

> Use this document for 10-15 minute interview revision before technical discussions.

---

## Concurrency Journey

```text
Threads
    ↓
Who performs the work?

Mutex
    ↓
Who can access the resource?

Locks
    ↓
How is synchronization managed safely?

Condition Variables
    ↓
When should threads continue execution?

Atomic Variables
    ↓
Can synchronization be performed efficiently?
```

---

## 47. Threads

### 2 Minute Revision
- Threads provide concurrent execution paths.
- Multiple threads may access shared resources.
- Thread lifetime management is important.
- Concurrency bugs are often timing dependent.

### Interview Keywords
- std::thread
- Thread Lifetime
- Thread Safety
- Concurrency

### Most Asked Question
- Why do threads exist?

### Interview Trap
- More threads do NOT always improve performance.

---

## 48. Mutex

### 2 Minute Revision
- Mutexes protect shared resources.
- Only one thread should access protected data at a time.
- Synchronization improves correctness.
- Excessive locking may hurt performance.

### Interview Keywords
- std::mutex
- Synchronization
- Shared Resources
- Thread Safety

### Most Asked Question
- Why are mutexes necessary?

### Interview Trap
- Mutexes improve correctness, NOT necessarily performance.

---

## 49. Locks

### 2 Minute Revision
- Modern C++ prefers RAII-based lock management.
- `std::lock_guard` automatically releases locks.
- `std::unique_lock` provides additional flexibility.
- Prefer safer synchronization mechanisms whenever possible.

### Interview Keywords
- std::lock_guard
- std::unique_lock
- RAII
- Lock Management

### Most Asked Question
- Why is `std::lock_guard` generally preferred over manual locking?

### Interview Trap
- Forgetting that locks are resources managed by RAII.

---

## 50. Condition Variables

### 2 Minute Revision
- Condition variables coordinate threads efficiently.
- Threads can wait without wasting CPU resources.
- Notifications determine when waiting threads continue execution.
- Thread coordination and resource protection solve different problems.

### Interview Keywords
- std::condition_variable
- wait()
- notify_one()
- notify_all()

### Most Asked Question
- Why isn't a mutex sufficient for every synchronization problem?

### Interview Trap
- Mutexes protect resources. Condition variables coordinate threads.

---

## 51. Atomic Variables

### 2 Minute Revision
- Atomics provide lightweight thread-safe operations.
- Excellent for many simple synchronization requirements.
- Mutexes and atomics solve different classes of problems.
- Always balance correctness, thread safety, and performance.

### Interview Keywords
- std::atomic
- Thread Safety
- Lock-Free Thinking
- Scalability

### Most Asked Question
- Why not simply use mutexes everywhere?

### Interview Trap
- Atomics can NOT replace every mutex.

---

## Production Debugging Checklist

Always ask:

1. Who can access this resource?
2. Is synchronization required?
3. Can race conditions occur?
4. Can contention become a bottleneck?
5. Can thread coordination be improved?
6. Can atomics simplify this design?
7. Can performance be improved while remaining thread-safe?

---

## AMD SMTS Interview Checklist

Be able to confidently explain:
- Why threads exist.
- Why synchronization is required.
- The difference between mutexes and locks.
- Why condition variables exist.
- Why atomics are useful.
- Synchronization trade-offs.
- Thread safety considerations.
- Scalability and performance implications.
- Modern C++ concurrency best practices.

---

## Senior Engineer Thinking

```text
Junior Engineer
---------------
How do I use this feature?

        ↓

Mid Level Engineer
-----------------
Can concurrency bugs occur?

        ↓

Senior Engineer
---------------
Is concurrency required at all?

Can synchronization be simplified?

Can scalability be improved?

Can performance be improved while
remaining thread-safe?
```

---

## Modern C++ Concurrency Philosophy

```text
Threads
    ↓
Perform Work.

Mutex
    ↓
Protect Resources.

Locks
    ↓
Manage Resources Safely.

Condition Variables
    ↓
Coordinate Threads Efficiently.

Atomics
    ↓
Optimize Synchronization.

                ↓

Write Cleaner Code
        +
Write Safer Code
        +
Write Faster Code
        +
Write Thread Safe Code
        ↓
Production Quality Modern C++
```

---

**Next Phase:** `06-exception-handling/52-try-catch.md`

> Quick Tip: In concurrency interviews, focus less on APIs and more on synchronization requirements, thread safety, scalability, debugging strategies, and engineering trade-offs.