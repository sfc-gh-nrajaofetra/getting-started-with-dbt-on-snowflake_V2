SELECT DISTINCT
LEAD_SOURCE
FROM {{ ref('stg_marketing_leads') }}