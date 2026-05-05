# Definition Alignment: Measuring System Discrepancies

## Overview
In complex operational systems, the same metric can be defined differently across teams. These differences lead to inconsistent reporting, misaligned insights, and conflicting conclusions.

This document outlines the key dimensions where metric definitions diverge and how they can be standardized.

---

## The Problem

A single concept can vary across implementations due to:

- Different time thresholds  
- Different resolution conditions  
- Different inclusion or exclusion criteria  

These variations result in:
- Inconsistent metrics across teams  
- Difficulty comparing performance  
- Misaligned decision-making  

---

## Key Dimensions of Variation

### 1. Trigger Condition
Defines when an event enters the metric.

### 2. Resolution Condition
Defines what qualifies as a successful outcome.

### 3. Time Thresholds
Defines how long the system waits before classifying a failure.

### 4. Filtering Logic
Defines which records are included or excluded from analysis.

---

## Why Alignment Matters

Without standardization:
- Teams report different values for the same metric  
- Root cause analysis becomes unreliable  
- Cross-functional decisions become difficult  

---

## Recommended Approach

### Separate Detection from Attribution
- Detection: identify whether a failure occurred  
- Attribution: classify why it occurred  

These should be handled independently.

---

### Standardize Core Logic
Use a single definition for:
- Trigger condition  
- Resolution condition  
- Time threshold  

Allow flexibility only in downstream analysis.

---

### Layer Additional Context
Additional signals (e.g., categorization, status changes) should be applied after the core metric is determined.

---

## System Design Principle

A metric should have:
- One consistent definition  
- Clear inputs and outputs  
- Separation between measurement and interpretation  

---

## Conclusion

Aligning metric definitions is critical for building reliable analytical systems. Without alignment, even well-designed metrics can produce misleading insights.
