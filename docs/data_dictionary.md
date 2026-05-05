# Data Dictionary

## event_date
Date associated with the operational record.

## location_id
Identifier for the operational location.

## region
High-level grouping used to segment data geographically or operationally.

## process_id
Unique identifier representing an operational process or unit of work.

## category
Classification used to group similar types of operations.

## planned_units
Number of units expected to be processed.

## received_units
Number of units that became available for processing.

## executed_units
Number of units successfully completed.

## planning_miss_units
Units that were planned but not received.

## unexpected_volume_units
Units that were received but not planned.

## execution_gap_units
Units that were received but not completed.

## planning_miss_rate
Percentage of planned units that were not received.

## unexpected_volume_rate
Percentage of received units that were not planned.

## execution_gap_rate
Percentage of received units that were not completed.

## planned_time
Expected time allocated for processing.

## actual_time
Observed time spent processing.

## time_variance
Difference between planned and actual time.

## root_cause_category
Classification indicating the likely source of performance gaps.

## unplanned_volume_flag
Indicator showing presence of unplanned volume.
