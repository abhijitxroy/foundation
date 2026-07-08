# Monitoring & Alerting

## Overview

Production systems must be continuously monitored to ensure they remain healthy, reliable, and available. Monitoring enables engineers to detect abnormal behavior before users are significantly affected, while alerting ensures that the appropriate teams are notified quickly enough to respond.

Effective monitoring and alerting reduce downtime, improve reliability, and enable proactive operations instead of reactive firefighting.

## Definition

**Monitoring** is the engineering discipline of continuously observing applications, infrastructure, networks, and services to evaluate their health, performance, availability, and reliability.

**Alerting** is the process of automatically notifying engineers when monitored systems exceed predefined thresholds or exhibit abnormal behavior requiring investigation or action.

## Objectives

- Continuously monitor production systems.
- Detect failures quickly.
- Notify engineers of actionable issues.
- Reduce service downtime.
- Improve operational reliability.
- Support rapid incident response.

## Monitoring Architecture

```text
Applications & Infrastructure
            │
            ▼
Telemetry Collection
            │
            ▼
Monitoring System
            │
     ┌──────┼──────┐
     ▼      ▼      ▼
 Dashboards Alerts Reports
            │
            ▼
Incident Response
```

## Core Concepts

| Concept | Purpose |
|---------|---------|
| Monitoring | Continuously observe system health. |
| Health Check | Verify that a service is functioning correctly. |
| Alert | Notify engineers when predefined conditions occur. |
| Threshold | Metric value that triggers an alert. |
| Dashboard | Visualize operational data. |
| Escalation | Route unresolved alerts to higher support levels. |
| Runbook | Documented operational procedures for responding to alerts. |

## Types of Monitoring

| Type | Purpose |
|------|---------|
| Infrastructure Monitoring | Monitor servers, virtual machines, containers, storage, and networks. |
| Application Monitoring | Monitor application performance and availability. |
| Database Monitoring | Track database health, queries, and resource usage. |
| Network Monitoring | Observe connectivity, latency, bandwidth, and packet loss. |
| Security Monitoring | Detect suspicious activity and security events. |
| Business Monitoring | Measure business KPIs such as orders, payments, or active users. |

## Effective Alerts

Good alerts should be:

- Actionable
- Timely
- Accurate
- Relevant
- Prioritized

Poor alerts create **alert fatigue**, where engineers begin ignoring notifications because of excessive noise.

## Alert Severity

| Severity | Description |
|----------|-------------|
| Critical | Immediate response required; major customer or business impact. |
| High | Significant issue requiring prompt investigation. |
| Medium | Important issue with limited impact. |
| Low | Minor issue or informational notification. |

## Monitoring Best Practices

- Monitor user-facing services.
- Monitor infrastructure and applications together.
- Define meaningful alert thresholds.
- Regularly review dashboards.
- Test alerting workflows.
- Correlate alerts with logs and traces.

## Common Mistakes

- Alerting on every metric.
- Ignoring business metrics.
- Creating dashboards that are never reviewed.
- Missing health checks.
- Using static thresholds for dynamic workloads.
- Never tuning noisy alerts.

## Interview Focus

Be prepared to explain:

- Monitoring
- Alerting
- Health Checks
- Alert Thresholds
- Dashboards
- Alert Fatigue
- Escalation
- Runbooks

## Related Topics

- Observability Foundations
- Logging
- Metrics
- Distributed Tracing
- Incident Management
- Site Reliability Engineering (SRE)

## Next

Continue with **06-performance-engineering.md** to understand how engineers measure, analyze, and optimize application performance, resource utilization, scalability, and capacity planning.
