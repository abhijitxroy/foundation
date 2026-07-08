# Logging

## Overview

Logs provide the most detailed record of what happens inside applications and infrastructure. They capture application events, errors, user actions, system activities, and operational information that help engineers understand system behavior, troubleshoot production issues, investigate incidents, and perform audits.

Effective logging is a cornerstone of observability because it provides the detailed context required to diagnose problems that metrics alone cannot explain.

## Definition

**Logging** is the engineering discipline of recording structured information about application, system, and infrastructure events to support monitoring, troubleshooting, security, auditing, and operational analysis.

Its objective is to provide accurate, searchable, and meaningful records of system behavior throughout the software lifecycle.

## Objectives

- Record important system events.
- Diagnose production issues.
- Support incident investigations.
- Improve application observability.
- Enable auditing and compliance.
- Assist performance analysis.

## Logging Architecture

```text
Application
      │
      ▼
Log Events
      │
      ▼
Log Collector
      │
      ▼
Centralized Log Storage
      │
      ▼
Search & Analysis
      │
      ▼
Dashboards & Alerts
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Log Entry | A record describing an event or activity. |
| Structured Logging | Store logs in a machine-readable format such as JSON. |
| Log Level | Classify log importance and severity. |
| Log Aggregation | Collect logs from multiple systems into a central location. |
| Log Correlation | Connect related logs across services and systems. |
| Log Retention | Define how long logs are stored. |
| Log Parsing | Extract structured information from log messages. |

## Common Log Levels

| Level | Purpose |
|-------|---------|
| TRACE | Extremely detailed diagnostic information. |
| DEBUG | Information useful during development and debugging. |
| INFO | Normal application events. |
| WARN | Unexpected conditions that do not stop execution. |
| ERROR | Recoverable failures requiring attention. |
| FATAL | Critical failures causing application termination. |

## Structured Logging

Instead of writing free-form text, structured logging stores fields such as:

- Timestamp
- Log Level
- Service Name
- Request ID
- User ID (where appropriate)
- Trace ID
- Message
- Error Details

This enables efficient searching, filtering, and correlation.

## Centralized Logging

Centralized logging allows engineers to:

- Search logs across services.
- Correlate distributed application events.
- Investigate production incidents.
- Build dashboards.
- Trigger alerts.
- Support compliance and auditing.

## Best Practices

- Use structured logging.
- Include timestamps in a consistent format.
- Log meaningful contextual information.
- Avoid logging sensitive information.
- Use appropriate log levels.
- Correlate logs using request or trace identifiers.

## Common Mistakes

- Logging excessive unnecessary data.
- Logging passwords, secrets, or personal information.
- Using inconsistent log formats.
- Logging everything as INFO.
- Missing contextual information.
- Ignoring log retention policies.

## Interview Focus

Be prepared to explain:

- Logging
- Structured Logging
- Log Levels
- Log Aggregation
- Log Correlation
- Log Retention
- Centralized Logging
- Log Analysis

## Related Topics

- Observability Foundations
- Metrics
- Distributed Tracing
- Monitoring & Alerting
- Incident Management

## Next

Continue with **03-metrics.md** to understand how numerical measurements provide continuous visibility into application health, infrastructure utilization, service reliability, and production performance.
