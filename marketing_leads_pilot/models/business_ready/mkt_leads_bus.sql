SELECT
f.LEAD_ID,
f.LEAD_SOURCE,
f.CREATED_DATE,
f.IS_QUALIFIED
FROM {{ ref('int_fact_leads') }} AS f