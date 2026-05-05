-- ============================================================================
-- Root Cause Analysis
-- Classifies planning vs execution gaps into upstream vs operational issues.
-- ============================================================================

WITH root_cause_analysis AS (
    SELECT
        event_date,
        location_id,
        region,
        process_id,
        category,

        planned_units,
        received_units,
        executed_units,

        planning_miss_rate,
        unexpected_volume_rate,
        execution_gap_rate,

        CASE
            WHEN planning_miss_rate > 0.05
                 AND execution_gap_rate <= 0.02
                THEN 'Upstream Issue'

            WHEN planning_miss_rate > 0.05
                 AND execution_gap_rate > 0.02
                THEN 'Mixed Issue'

            WHEN planning_miss_rate <= 0.05
                 AND execution_gap_rate > 0.02
                THEN 'Operational Issue'

            ELSE 'In Control'
        END AS root_cause_category,

        CASE
            WHEN unexpected_volume_rate > 0.05
                THEN 1
            ELSE 0
        END AS unplanned_volume_flag

    FROM metric_calculations
)

SELECT *
FROM root_cause_analysis;
