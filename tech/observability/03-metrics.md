# Metrics

## Overview

Modern systems generate enormous amounts of operational data. While logs provide detailed event information, engineers also need lightweight numerical measurements that continuously track the health, performance, and reliability of applications and infrastructure.

Metrics provide a high-level view of system behavior over time, enabling dashboards, alerting, capacity planning, performance optimization, and service reliability monitoring.

## Definition

**Metrics** are numerical measurements collected over time that describe the health, performance, utilization, and behavior of applications, infrastructure, and services.

They enable engineers to detect trends, monitor service health, trigger alerts, and evaluate system performance efficiently.

## Objectives

- Measure system health.
- Monitor application performance.
- Detect abnormal behavior.
- Support alerting.
- Enable capacity planning.
- Improve operational reliability.

## Metrics Architecture

```text
Applications
      │
      ▼
Metric Collection
      │
      ▼
Time-Series Database
      │
      ▼
Aggregation
      │
      ▼
Dashboards
      │
      ▼
Alerts
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Metric | Numerical measurement representing system behavior. |
| Time Series | Sequence of metric values collected over time. |
| Label (Tag) | Metadata used to categorize metrics. |
| Aggregation | Combine multiple metric values for analysis. |
| Sampling | Collect measurements at regular intervals. |
| Dashboard | Visualize metrics for operational insights. |
| Alert Threshold | Trigger notifications when metric values exceed defined limits. |

## Common Metric Types

| Type | Purpose |
|------|---------|
| Counter | Continuously increasing value (for example, total requests). |
| Gauge | Current value that can increase or decrease (for example, memory usage). |
| Histogram | Measure the distribution of values such as request latency. |
| Summary | Calculate quantiles and statistical summaries over observations. |

## Common Infrastructure Metrics

Typical infrastructure metrics include:

- CPU Utilization
- Memory Utilization
- Disk Usage
- Disk I/O
- Network Throughput
- Network Latency
- File System Usage

## Common Application Metrics

Typical application metrics include:

- Request Rate
- Error Rate
- Response Time
- Active Users
- Queue Length
- Cache Hit Ratio
- Database Query Latency

## SLI, SLO & SLA

| Term | Purpose |
|------|---------|
| Service Level Indicator (SLI) | Measure a specific aspect of service performance (for example, request latency). |
| Service Level Objective (SLO) | Target value for an SLI (for example, 99.9% availability). |
| Service Level Agreement (SLA) | Formal commitment made to customers regarding service performance. |

## Best Practices

- Measure metrics that support business and operational goals.
- Keep metric names consistent.
- Add meaningful labels.
- Monitor long-term trends.
- Build actionable dashboards.
- Define alerts based on user impact.

## Common Mistakes

- Collecting excessive low-value metrics.
- Using inconsistent naming conventions.
- Missing important business metrics.
- Creating noisy alerts.
- Monitoring infrastructure without monitoring applications.
- Ignoring long-term performance trends.

## Interview Focus

Be prepared to explain:

- Metrics
- Time-Series Data
- Counter
- Gauge
- Histogram
- SLI
- SLO
- SLA
- Dashboard
- Alert Threshold

## Related Topics

- Observability Foundations
- Logging
- Distributed Tracing
- Monitoring & Alerting
- Site Reliability Engineering (SRE)

## Next

Continue with **04-distributed-tracing.md** to understand how traces, spans, and context propagation reveal the complete execution path of requests across distributed systems and microservices.
