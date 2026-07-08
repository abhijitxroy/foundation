# Test Design Techniques

## Overview

Well-designed test cases provide maximum defect detection with minimal effort. Test design techniques help engineers systematically select meaningful test cases, reduce redundant testing, improve coverage, and focus validation on areas with the highest business and technical risk.

Rather than relying on intuition alone, structured test design produces repeatable, maintainable, and effective testing strategies.

## Definition

Test Design Techniques are systematic methods used to identify, prioritize, and create effective test cases that verify software behavior under normal, boundary, exceptional, and business-critical conditions.

## Objectives

- Design effective test cases.
- Maximize defect detection.
- Reduce redundant tests.
- Improve test coverage.
- Focus testing on risk.
- Increase testing efficiency.

## Test Design Workflow

```text
Requirements
      │
      ▼
Identify Test Conditions
      │
      ▼
Select Design Technique
      │
      ▼
Design Test Cases
      │
      ▼
Execute Tests
      │
      ▼
Evaluate Coverage
```

## Common Test Design Techniques

| Technique | Purpose |
|-----------|---------|
| Equivalence Partitioning | Divide input into valid and invalid groups. |
| Boundary Value Analysis | Test values at the edges of input ranges. |
| Decision Table Testing | Validate combinations of business rules. |
| State Transition Testing | Verify behavior as system states change. |
| Use Case Testing | Validate complete user workflows. |
| Error Guessing | Use engineering experience to identify likely failures. |
| Exploratory Testing | Discover issues through guided investigation. |

## When to Use Each Technique

| Situation | Recommended Technique |
|----------|------------------------|
| Input validation | Equivalence Partitioning + Boundary Value Analysis |
| Complex business rules | Decision Table Testing |
| Workflow-driven systems | Use Case Testing |
| Stateful applications | State Transition Testing |
| Unknown or high-risk areas | Exploratory Testing |
| Historical defect-prone areas | Error Guessing |

## Best Practices

- Design tests from requirements.
- Cover both positive and negative scenarios.
- Prioritize business-critical functionality.
- Combine multiple techniques where appropriate.
- Review test cases before execution.
- Continuously improve test design based on production defects.

## Common Mistakes

- Testing only expected inputs.
- Ignoring boundary conditions.
- Creating duplicate test cases.
- Overlooking invalid scenarios.
- Focusing on quantity instead of coverage.
- Using a single technique for every problem.

## Interview Focus

Be prepared to explain:

- Equivalence Partitioning
- Boundary Value Analysis
- Decision Table Testing
- State Transition Testing
- Exploratory Testing
- How to choose an appropriate test design technique

## Related Topics

- Testing Foundations
- Test Levels & Test Types
- Test Automation
- Quality Engineering

## Next

Continue with **04-test-automation.md** to learn how testing is automated to improve speed, repeatability, and confidence throughout the software delivery lifecycle.
