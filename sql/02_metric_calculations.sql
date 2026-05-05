-- ============================================================================
-- Metric Calculations
-- Calculates planning accuracy and execution gap metrics.
-- ============================================================================

WITH metric_calculations AS (
    SELECT
        event_date,
        location_id,
        region,
        process_id,
        category,

        planned_units,
        received_units,
        executed_units,

        planned_units - received_units AS planned_not_received_units,
        received_units - planned_units AS received_not_planned_units,
        received_units - executed_units AS received_not_executed_units,

        (planned_units - received_units)::FLOAT
            / NULLIF(planned_units, 0) AS planning_miss_rate,

        (received_units - planned_units)::FLOAT
            / NULLIF(received_units, 0) AS unexpected_volume_rate,

        (received_units - executed_units)::FLOAT
            / NULLIF(received_units, 0) AS execution_gap_rate,

        planned_time,
        actual_time,
        planned_time - actual_time AS time_variance

    FROM base_data
)

SELECT *
FROM metric_calculations;
