-- ============================================================================
-- Base Data
-- Extracts the core planned, received, and executed unit counts used to evaluate
-- planning accuracy and execution performance.
-- ============================================================================

WITH base_data AS (
    SELECT
        CAST(event_date AS DATE) AS event_date,
        location_id,
        region,
        process_id,
        category,

        planned_units,
        received_units,
        executed_units,

        planned_time,
        actual_time

    FROM source_planning_data
    WHERE event_date BETWEEN DATEADD(week, -21, DATE_TRUNC('week', CURRENT_DATE))
        AND DATE_TRUNC('week', CURRENT_DATE) + INTERVAL '6 days'
)

SELECT *
FROM base_data;
