{{ config(materialized='table') }}
WITH raw_data AS (
SELECT 'L001' AS LEAD_ID, 'Website Form' AS LEAD_SOURCE, 'New' AS STATUS, '2025-09-01 08:00:00'::timestamp AS CREATED_AT
UNION ALL SELECT 'L002', 'Paid Ad', 'Contacted', '2025-09-02 09:30:00'::timestamp
UNION ALL SELECT 'L003', 'Referral', 'Qualified', '2025-09-03 11:00:00'::timestamp
UNION ALL SELECT 'L004', 'Website Form', 'New', '2025-09-04 13:45:00'::timestamp
UNION ALL SELECT 'L005', 'Paid Ad', 'New', '2025-09-05 15:00:00'::timestamp
UNION ALL SELECT 'L006', 'Website Form', 'Contacted', '2025-09-06 16:10:00'::timestamp
UNION ALL SELECT 'L007', 'Referral', 'Qualified', '2025-09-07 18:20:00'::timestamp
UNION ALL SELECT 'L008', 'Paid Ad', 'New', '2025-09-08 20:00:00'::timestamp
UNION ALL SELECT 'L009', 'Website Form', 'New', '2025-09-09 21:30:00'::timestamp
UNION ALL SELECT 'L010', 'Paid Ad', 'Contacted', '2025-09-10 22:45:00'::timestamp
)
 -- This SELECT statement is what dbt will use to build your staging table.
SELECT
LEAD_ID,
LEAD_SOURCE,
STATUS,
CREATED_AT
FROM raw_data