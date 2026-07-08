# Site Reliability Engineering (SRE)

## Overview

As software systems become increasingly distributed and business-critical, maintaining high reliability requires more than responding to incidents. Organizations need engineering practices that proactively improve reliability, reduce operational effort, and balance feature delivery with system stability.

Site Reliability Engineering (SRE) applies software engineering principles to operations, using automation, measurement, and continuous improvement to build highly reliable production systems.

## Definition

**Site Reliability Engineering (SRE)** is the engineering discipline of applying software engineering practices to infrastructure and operations in order to build scalable, reliable, and maintainable systems.

Its objective is to improve service reliability through automation, measurable reliability targets, operational excellence, and continuous improvement.

## Objectives

- Improve system reliability.
- Reduce operational toil.
- Define measurable reliability goals.
- Automate repetitive operational work.
- Improve incident response.
- Balance reliability with feature development.

## SRE Lifecycle

```text
Service Design
      │
      ▼
Define SLOs
      │
      ▼
Monitor Reliability
      │
      ▼
Detect Incidents
      │
      ▼
Respond & Recover
      │
      ▼
Postmortem
      │
      ▼
Automation
      │
      ▼
Continuous Improvement
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Reliability | Ensure systems consistently perform their intended function. |
| Service Level Indicator (SLI) | Measure a specific aspect of service performance. |
| Service Level Objective (SLO) | Target reliability goal for an SLI. |
| Service Level Agreement (SLA) | Contractual reliability commitment to customers. |
| Error Budget | Acceptable level of unreliability before reliability work takes priority. |
| Toil | Manual, repetitive operational work that should be automated. |
| Automation | Replace manual operational activities with software. |

## SLI, SLO & SLA

| Term | Description |
|------|-------------|
| SLI | What is measured (availability, latency, error rate). |
| SLO | Internal reliability target. |
| SLA | External commitment made to customers. |

Example:

```text
SLI : API Availability
SLO : 99.9%
SLA : 99.5%
```

## Error Budget

```text
100% Availability
        │
        ▼
Allowed Failure
        │
        ▼
Error Budget
        │
        ▼
Consumed?
        │
   ┌────┴────┐
   ▼         ▼
No         Yes
 │           │
 ▼           ▼
Ship      Improve
Features   Reliability
```

Error budgets help balance innovation and stability. If the error budget is exhausted, engineering effort should shift from delivering new features to improving reliability.

## Reducing Toil

Common examples of toil include:

- Manual deployments
- Manual incident recovery
- Manual log analysis
- Manual infrastructure provisioning
- Repetitive maintenance tasks

Automation reduces toil, improves consistency, and allows engineers to focus on higher-value work.

## Best Practices

- Define measurable SLOs.
- Automate repetitive operational tasks.
- Monitor service reliability continuously.
- Conduct blameless postmortems.
- Track and manage error budgets.
- Continuously improve operational processes.

## Common Mistakes

- Treating SRE as only an operations role.
- Measuring uptime without user-centric metrics.
- Ignoring toil.
- Creating unrealistic SLOs.
- Skipping postmortems.
- Focusing only on incident response instead of prevention.

## Interview Focus

Be prepared to explain:

- Site Reliability Engineering (SRE)
- Reliability
- SLI
- SLO
- SLA
- Error Budget
- Toil
- Automation
- Blameless Postmortems

## Related Topics

- Observability Foundations
- Monitoring & Alerting
- Performance Engineering
- Incident Management
- DevOps
- Platform Engineering

## Next

Continue with **08-incident-management.md** to understand how engineering teams prepare for, respond to, communicate during, and learn from production incidents while minimizing business impact.
