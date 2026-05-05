# Planning Accuracy Analysis

## Overview

This project analyzes the gap between planning and execution in an operational system by comparing expected, received, and completed units. It focuses on identifying where breakdowns occur across the pipeline and distinguishing between upstream supply issues and execution inefficiencies.

The goal is to provide a structured framework for diagnosing performance gaps and understanding how planning accuracy impacts downstream operations.

---

## Objectives

* Measure discrepancies between planned, received, and executed units
* Identify gaps in planning accuracy and execution performance
* Differentiate between upstream supply issues and operational inefficiencies
* Provide a framework for root cause analysis

---

## Core Concepts

* **Planned Units**: Units expected to be processed
* **Received Units**: Units that successfully arrive or become available
* **Executed Units**: Units that are successfully completed

---

## Key Metrics

* **Planning Miss Rate**
  Measures units that were planned but never received

* **Unexpected Volume Rate**
  Measures units that were received but not planned

* **Execution Gap Rate**
  Measures units that were received but not completed

---

## Pipeline Structure

```text
sql/
  01_base_data.sql
  02_metric_calculations.sql
  03_root_cause_analysis.sql

docs/
  metric_definitions.md
  data_dictionary.md
  sanitization_notes.md
  insights.md

sample_output/
  planning_accuracy_sample.csv
```

---

## Use Cases

* Identify upstream supply issues vs execution inefficiencies
* Evaluate planning accuracy across time and regions
* Diagnose root causes of operational performance gaps
* Support decision-making for process improvements

---

## Notes

All data sources, field names, and business logic have been generalized to preserve confidentiality while maintaining analytical structure.
