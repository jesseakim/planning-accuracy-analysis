# Metric Definitions

## Planned Units
Units expected to be processed during a given period.

## Received Units
Units that successfully arrived or became available for processing.

## Executed Units
Units that were successfully completed.

---

## Planning Miss Units
Units that were planned but not received.

Definition:
planned_units - received_units

---

## Unexpected Volume Units
Units that were received but were not part of the original plan.

Definition:
received_units - planned_units

---

## Execution Gap Units
Units that were received but not completed.

Definition:
received_units - executed_units

---

## Planning Miss Rate
The percentage of planned units that were not received.

Definition:
planning_miss_units / planned_units

---

## Unexpected Volume Rate
The percentage of received units that were not part of the original plan.

Definition:
unexpected_volume_units / received_units

---

## Execution Gap Rate
The percentage of received units that were not completed.

Definition:
execution_gap_units / received_units

---

## Root Cause Category
A classification used to distinguish likely upstream issues, operational issues, mixed issues, or controlled performance.

Categories:
- Upstream Issue
- Operational Issue
- Mixed Issue
- In Control
