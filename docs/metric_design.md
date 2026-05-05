# Metric Design: Planning vs Execution Gap

## Overview
This metric framework was designed to expose the gap between planning and execution in an operational system. Traditional performance metrics often fail to distinguish between upstream supply issues and downstream execution inefficiencies.

This framework separates these concerns into distinct measurable components.

---

## Problem Statement
Operational systems frequently measure performance outcomes without isolating where failures originate. This creates ambiguity in root cause analysis and leads to misaligned remediation efforts.

A key gap exists between:
- What is planned  
- What becomes available  
- What is ultimately completed  

---

## Metric Framework

The system is built on three core measures:

### Planning Gap
Difference between expected and received work.

### Execution Gap
Difference between received and completed work.

### Unplanned Volume
Work that appears in the system without being part of the original plan.

---

## Why This Matters

Without separating these components:
- Planning issues may be misinterpreted as execution failures  
- Execution inefficiencies may be incorrectly attributed to supply problems  
- System-level performance becomes difficult to diagnose  

---

## System Relationships

The interaction between planning and execution creates overlapping effects:

- Some execution gaps are driven by upstream supply failures  
- Some are driven by internal operational inefficiencies  
- Both can exist simultaneously  

Understanding this overlap is critical for accurate diagnosis.

---

## Analytical Approach

To isolate root causes, the framework:
1. Measures each gap independently  
2. Evaluates relationships between gaps  
3. Classifies failure types based on combined behavior  

This allows for a structured investigation process rather than reactive analysis.

---

## Impact on Operational Efficiency

When planning and execution are misaligned:
- Resources are allocated but not utilized  
- Workflows become inconsistent  
- Performance metrics lose accuracy  

These inefficiencies compound across the system, increasing operational cost and reducing reliability.

---

## Conclusion

A well-designed metric system must distinguish between planning accuracy and execution performance. This separation enables targeted improvements and prevents misdiagnosis of system failures.
