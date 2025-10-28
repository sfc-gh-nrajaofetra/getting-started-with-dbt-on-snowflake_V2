
  
    

        create or replace transient table nra_demo_db.dbt_projects.mkt_leads_bus
         as
        (SELECT
f.LEAD_ID,
f.LEAD_SOURCE,
f.CREATED_DATE,
f.IS_QUALIFIED
FROM nra_demo_db.dbt_projects.int_fact_leads AS f
        );
      
  