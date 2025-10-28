
  
    

        create or replace transient table nra_demo_db.dbt_projects.int_dim_lead_source
         as
        (SELECT DISTINCT
LEAD_SOURCE
FROM nra_demo_db.dbt_projects.stg_marketing_leads
        );
      
  