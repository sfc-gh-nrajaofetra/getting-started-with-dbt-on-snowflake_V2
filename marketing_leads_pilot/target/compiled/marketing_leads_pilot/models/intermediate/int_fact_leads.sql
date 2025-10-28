SELECT
rl.LEAD_ID,
ls.LEAD_SOURCE AS LEAD_SOURCE,
DATE(rl.CREATED_AT) AS CREATED_DATE,
CASE WHEN rl.STATUS = 'Qualified' THEN TRUE ELSE FALSE END AS IS_QUALIFIED
FROM nra_demo_db.dbt_projects.stg_marketing_leads AS rl
LEFT JOIN nra_demo_db.dbt_projects.int_dim_lead_source AS ls
ON rl.LEAD_SOURCE = ls.LEAD_SOURCE